-- INT-01: clave foránea inválida (debe dar error)
INSERT INTO cafetrace.batch VALUES 
('BAT9999','Castillo',100,100,20000,1500,'Test FK',80,'Prueba','F9999');

-- INT-02: email duplicado (debe dar error)
INSERT INTO cafetrace.person (first_name,last_name_1,email,phone,register_date,status)
VALUES ('Carlos','Ramírez','carlos.ramirez1@cafetrace.co','3100000001','2025-01-01','pending');
INSERT INTO cafetrace.person (first_name,last_name_1,email,phone,register_date,status)
VALUES ('Pedro','Gómez','carlos.ramirez1@cafetrace.co','3100000002','2025-01-01','pending');

-- QRY-01: compradores con más de 1 factura
SELECT p.first_name, p.last_name_1, bu.company_name, COUNT(i.id_invoice) AS total_facturas
FROM cafetrace.buyer bu
JOIN cafetrace.person p ON p.id = bu.id_buyer
JOIN cafetrace.invoice i ON i.buyer_id = bu.id_buyer
GROUP BY p.first_name, p.last_name_1, bu.company_name
HAVING COUNT(i.id_invoice) > 1
ORDER BY total_facturas DESC;

-- QRY-02: ventas totales por mes
SELECT TO_CHAR(i.invoice_date,'YYYY-MM') AS mes,
       COUNT(i.id_invoice)               AS facturas,
       SUM(i.total_price)                AS total_ventas_cop
FROM cafetrace.invoice i
WHERE i.status = 'completed'
GROUP BY TO_CHAR(i.invoice_date,'YYYY-MM')
ORDER BY mes;

-- Tab 1 (ejecutar primero, NO hacer commit todavía):
BEGIN;
UPDATE cafetrace.batch SET available_weight = 100 WHERE code_batch = 'BAT0001';
-- espera 10 segundos antes de hacer COMMIT

-- Tab 2 (ejecutar mientras Tab 1 está en BEGIN):
BEGIN;
UPDATE cafetrace.batch SET available_weight = 50 WHERE code_batch = 'BAT0001';
COMMIT;
-- Tab 2 debe quedar esperando (bloqueado) hasta que Tab 1 haga COMMIT

-- PER-01: tiempo de consulta sobre todos los lotes con su trazabilidad
EXPLAIN ANALYZE
SELECT b.code_batch, b.variety, f.name, m.name, p.first_name
FROM cafetrace.batch b
JOIN cafetrace.farm f ON f.id_farm = b.farm_id
JOIN cafetrace.municipality m ON m.id_municipality = f.municipality_id
JOIN cafetrace.farmer fr ON fr.id_farmer = f.farmer_id
JOIN cafetrace.person p ON p.id = fr.id_farmer;

-- PER-02: mismo query sin JOIN (más lento) vs con JOIN (más rápido)

-- Paso 1: crear usuario de prueba sin permisos
CREATE USER tester_cafetrace WITH PASSWORD 'test1234';

-- Paso 2: intentar acceder a una tabla sensible con ese usuario
-- (abre Query Tool y cambia la conexión al usuario tester_cafetrace)
SELECT * FROM cafetrace.person;

-- SEC-02: simular que un atacante envía ' OR '1'='1
-- en un campo de búsqueda de email
SELECT * FROM cafetrace.person 
WHERE email = '' OR '1'='1';


-- Paso 1: iniciar una transacción y dejarla incompleta
BEGIN;
UPDATE cafetrace.batch SET available_weight = 0 WHERE code_batch = 'BAT0001';
-- Aquí "simulas el fallo" haciendo ROLLBACK en lugar de COMMIT

ROLLBACK;

-- Paso 2: verificar que el dato quedó intacto
SELECT code_batch, available_weight FROM cafetrace.batch WHERE code_batch = 'BAT0001';
-- Resultado esperado: el valor original, sin cambios

