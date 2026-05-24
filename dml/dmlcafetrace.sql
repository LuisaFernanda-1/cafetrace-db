-- ============================================================
-- FIX DML - Limpiar e insertar datos correctamente
-- ============================================================

-- Primero limpiar todo en orden inverso para evitar errores de FK
TRUNCATE cafetrace.invoice_detail CASCADE;
TRUNCATE cafetrace.invoice CASCADE;
TRUNCATE cafetrace.qr_code CASCADE;
TRUNCATE cafetrace.certification CASCADE;
TRUNCATE cafetrace.photo CASCADE;
TRUNCATE cafetrace.productive_process CASCADE;
TRUNCATE cafetrace.batch CASCADE;
TRUNCATE cafetrace.farm CASCADE;
TRUNCATE cafetrace.admin CASCADE;
TRUNCATE cafetrace.buyer CASCADE;
TRUNCATE cafetrace.farmer CASCADE;
TRUNCATE cafetrace.person CASCADE;
TRUNCATE cafetrace.municipality CASCADE;
TRUNCATE cafetrace.department CASCADE;

-- ============================================================
-- 1. DEPARTMENT
-- ============================================================
INSERT INTO cafetrace.department (id_department, name) VALUES ('DEP01', 'Norte de Santander');
INSERT INTO cafetrace.department (id_department, name) VALUES ('DEP02', 'Antioquia');
INSERT INTO cafetrace.department (id_department, name) VALUES ('DEP03', 'Huila');
INSERT INTO cafetrace.department (id_department, name) VALUES ('DEP04', 'Nariño');
INSERT INTO cafetrace.department (id_department, name) VALUES ('DEP05', 'Cauca');

-- ============================================================
-- 2. MUNICIPALITY
-- ============================================================
INSERT INTO cafetrace.municipality (id_municipality, name, department_id) VALUES ('MUN01', 'Ocaña',    'DEP01');
INSERT INTO cafetrace.municipality (id_municipality, name, department_id) VALUES ('MUN02', 'Salazar',  'DEP01');
INSERT INTO cafetrace.municipality (id_municipality, name, department_id) VALUES ('MUN03', 'Jardín',   'DEP02');
INSERT INTO cafetrace.municipality (id_municipality, name, department_id) VALUES ('MUN04', 'Pitalito', 'DEP03');
INSERT INTO cafetrace.municipality (id_municipality, name, department_id) VALUES ('MUN05', 'La Unión', 'DEP04');

-- ============================================================
-- 3. PERSON con IDs fijos (OVERRIDING SYSTEM VALUE)
-- ============================================================

-- Farmers: ids 1, 2, 3, 4, 5
INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (1, 'Carlos',   'Ramírez',  'carlos.ramirez@mail.com',   '3101234567', '2025-02-14', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (2, 'Pedro',    'Gómez',    'pedro.gomez@mail.com',      '3154561234', '2025-02-15', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (3, 'Miguel',   'Becerra',  'miguel.becerra@mail.com',   '3001112233', '2025-02-16', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (4, 'Andrés',   'Morales',  'andres.morales@mail.com',   '3178889900', '2025-02-17', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (5, 'Camila',   'Jiménez',  'camila.jimenez@mail.com',   '3190001122', '2025-02-18', 'approved');

-- Buyers: ids 6, 7, 8
INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (6, 'Luisa',    'Ovallos',  'luisa.ovallos@mail.com',    '3209876543', '2025-02-19', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (7, 'Sandra',   'Torres',   'sandra.torres@mail.com',    '3187654321', '2025-02-20', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (8, 'Luis',     'Pedraza',  'luis.pedraza@mail.com',     '3123334455', '2025-02-21', 'approved');

-- Admins: ids 9, 10
INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (9,  'Oscar',     'Cárdenas', 'oscar.cardenas@mail.com',   '3112223344', '2025-02-22', 'approved');

INSERT INTO cafetrace.person (id, first_name, last_name_1, email, phone, register_date, status)
    OVERRIDING SYSTEM VALUE
    VALUES (10, 'Valentina', 'Ruiz',     'valentina.ruiz@mail.com',   '3156667788', '2025-02-23', 'approved');

-- Resetear la secuencia para que el proximo SERIAL continue desde 11
SELECT setval(pg_get_serial_sequence('cafetrace.person', 'id'), 10);

-- ============================================================
-- 4. FARMER (ids 1-5 son farmers)
-- ============================================================
INSERT INTO cafetrace.farmer (id_farmer, experience_years, profile_photo) VALUES (1, '8',  'fotos/farmer_1.jpg');
INSERT INTO cafetrace.farmer (id_farmer, experience_years, profile_photo) VALUES (2, '12', 'fotos/farmer_2.jpg');
INSERT INTO cafetrace.farmer (id_farmer, experience_years, profile_photo) VALUES (3, '5',  'fotos/farmer_3.jpg');
INSERT INTO cafetrace.farmer (id_farmer, experience_years, profile_photo) VALUES (4, '20', 'fotos/farmer_4.jpg');
INSERT INTO cafetrace.farmer (id_farmer, experience_years, profile_photo) VALUES (5, '3',  NULL);

-- ============================================================
-- 5. BUYER (ids 6-8 son buyers)
-- ============================================================
INSERT INTO cafetrace.buyer (id_buyer, company_name, company_type) VALUES (6, 'Tostadora El Origen', 'roaster');
INSERT INTO cafetrace.buyer (id_buyer, company_name, company_type) VALUES (7, 'Café Exports Ltda.',  'exporter');
INSERT INTO cafetrace.buyer (id_buyer, company_name, company_type) VALUES (8, 'Distribuidora Sur',   'distributor');

-- ============================================================
-- 6. ADMIN (ids 9-10 son admins)
-- ============================================================
INSERT INTO cafetrace.admin (id_admin, role, last_access_date) VALUES (9,  'superadmin', '2025-03-01');
INSERT INTO cafetrace.admin (id_admin, role, last_access_date) VALUES (10, 'moderator',  '2025-03-02');

-- ============================================================
-- 7. FARM
-- ============================================================
INSERT INTO cafetrace.farm (id_farm, name, hectares, description, municipality_id, municipality_department_id, farmer_id)
    VALUES ('F001', 'Finca El Roble',  12, 'Cultivo en zona alta',  'MUN01', 'DEP01', 1);
INSERT INTO cafetrace.farm (id_farm, name, hectares, description, municipality_id, municipality_department_id, farmer_id)
    VALUES ('F002', 'La Esperanza',     8, 'Variedad castillo',     'MUN02', 'DEP01', 2);
INSERT INTO cafetrace.farm (id_farm, name, hectares, description, municipality_id, municipality_department_id, farmer_id)
    VALUES ('F003', 'El Paraíso',      15, 'Café de sombra',        'MUN03', 'DEP02', 3);
INSERT INTO cafetrace.farm (id_farm, name, hectares, description, municipality_id, municipality_department_id, farmer_id)
    VALUES ('F004', 'Finca Los Pinos', 20, 'Certificada orgánica',  'MUN04', 'DEP03', 4);
INSERT INTO cafetrace.farm (id_farm, name, hectares, description, municipality_id, municipality_department_id, farmer_id)
    VALUES ('F005', 'Villa del Cafeto', 6, 'Pequeño productor',     'MUN05', 'DEP04', 5);

-- ============================================================
-- 8. BATCH
-- ============================================================
INSERT INTO cafetrace.batch (code_batch, variety, total_weight, available_weight, price_kg, altitude, description, quality_score, tasting_notes, farm_id)
    VALUES ('LOT-001', 'Castillo', 500, 500, 18500, 1800, 'Lote cosecha enero 2025, proceso lavado', 88, 'Acidez cítrica, cuerpo medio',      'F001');
INSERT INTO cafetrace.batch (code_batch, variety, total_weight, available_weight, price_kg, altitude, description, quality_score, tasting_notes, farm_id)
    VALUES ('LOT-002', 'Caturra',  300, 300, 21000, 2100, 'Microlote altura, notas florales',        92, 'Floral, caramelo, acidez brillante', 'F002');
INSERT INTO cafetrace.batch (code_batch, variety, total_weight, available_weight, price_kg, altitude, description, quality_score, tasting_notes, farm_id)
    VALUES ('LOT-003', 'Típica',   200, 200, 25000, 1950, 'Variedad patrimonial, proceso natural',   95, 'Frutas rojas, chocolate, dulce',     'F003');
INSERT INTO cafetrace.batch (code_batch, variety, total_weight, available_weight, price_kg, altitude, description, quality_score, tasting_notes, farm_id)
    VALUES ('LOT-004', 'Borbón',   400, 400, 19000, 1700, 'Lote grande, proceso honey',              85, 'Miel, nuez, cuerpo alto',            'F004');
INSERT INTO cafetrace.batch (code_batch, variety, total_weight, available_weight, price_kg, altitude, description, quality_score, tasting_notes, farm_id)
    VALUES ('LOT-005', 'Colombia', 600, 600, 17500, 1600, 'Lote estándar exportación',               80, 'Cuerpo medio, caramelo suave',       'F005');

-- ============================================================
-- 9. PRODUCTIVE_PROCESS
-- ============================================================
INSERT INTO cafetrace.productive_process (harvest_date, pulping_date, fermentation_date, washing_date, drying_date, code_batch)
    VALUES ('2025-01-01', '2025-01-02', '2025-01-03', '2025-01-05', '2025-01-10', 'LOT-001');
INSERT INTO cafetrace.productive_process (harvest_date, pulping_date, fermentation_date, washing_date, drying_date, code_batch)
    VALUES ('2025-01-05', '2025-01-06', '2025-01-07', '2025-01-09', '2025-01-14', 'LOT-002');
INSERT INTO cafetrace.productive_process (harvest_date, pulping_date, fermentation_date, washing_date, drying_date, code_batch)
    VALUES ('2025-01-10', '2025-01-11', '2025-01-12', '2025-01-14', '2025-01-19', 'LOT-003');
INSERT INTO cafetrace.productive_process (harvest_date, pulping_date, fermentation_date, washing_date, drying_date, code_batch)
    VALUES ('2025-01-15', '2025-01-16', '2025-01-17', '2025-01-19', '2025-01-24', 'LOT-004');
INSERT INTO cafetrace.productive_process (harvest_date, pulping_date, fermentation_date, washing_date, drying_date, code_batch)
    VALUES ('2025-01-20', '2025-01-21', '2025-01-22', '2025-01-24', '2025-01-29', 'LOT-005');

-- ============================================================
-- 10. PHOTO
-- ============================================================
INSERT INTO cafetrace.photo (file_path, stage, upload_date, description, code_batch)
    VALUES ('fotos/lot001_cosecha.jpg',    'harvest',      '2025-01-02', 'Cosecha manual selectiva',  'LOT-001');
INSERT INTO cafetrace.photo (file_path, stage, upload_date, description, code_batch)
    VALUES ('fotos/lot001_despulpado.jpg', 'pulping',      '2025-01-03', 'Despulpado en finca',       'LOT-001');
INSERT INTO cafetrace.photo (file_path, stage, upload_date, description, code_batch)
    VALUES ('fotos/lot002_cosecha.jpg',    'harvest',      '2025-01-06', 'Recolección altura 2100m',  'LOT-002');
INSERT INTO cafetrace.photo (file_path, stage, upload_date, description, code_batch)
    VALUES ('fotos/lot003_secado.jpg',     'drying',       '2025-01-19', 'Secado en camas africanas', 'LOT-003');
INSERT INTO cafetrace.photo (file_path, stage, upload_date, description, code_batch)
    VALUES ('fotos/lot004_ferment.jpg',    'fermentation', '2025-01-17', 'Fermentación 36 horas',     'LOT-004');

-- ============================================================
-- 11. CERTIFICATION
-- ============================================================
INSERT INTO cafetrace.certification (type, is_certified, issue_date, expiry_date, code_batch)
    VALUES ('Orgánico',       'Y', '2025-02-01', '2026-02-01', 'LOT-001');
INSERT INTO cafetrace.certification (type, is_certified, issue_date, expiry_date, code_batch)
    VALUES ('Comercio Justo', 'Y', '2025-02-05', '2026-02-05', 'LOT-002');
INSERT INTO cafetrace.certification (type, is_certified, issue_date, expiry_date, code_batch)
    VALUES ('Rainforest',     'N', '2025-02-10', NULL,          'LOT-003');
INSERT INTO cafetrace.certification (type, is_certified, issue_date, expiry_date, code_batch)
    VALUES ('Orgánico',       'Y', '2025-02-12', '2026-02-12', 'LOT-004');
INSERT INTO cafetrace.certification (type, is_certified, issue_date, expiry_date, code_batch)
    VALUES ('Comercio Justo', 'Y', '2025-02-15', '2026-02-15', 'LOT-005');

-- ============================================================
-- 12. QR_CODE
-- ============================================================
INSERT INTO cafetrace.qr_code (unique_code, url, generated_date, format, code_batch)
    VALUES ('QR-LOT001-2025', 'https://cafetrace.co/lote/LOT-001', '2025-01-10', 'PNG', 'LOT-001');
INSERT INTO cafetrace.qr_code (unique_code, url, generated_date, format, code_batch)
    VALUES ('QR-LOT002-2025', 'https://cafetrace.co/lote/LOT-002', '2025-01-14', 'PNG', 'LOT-002');
INSERT INTO cafetrace.qr_code (unique_code, url, generated_date, format, code_batch)
    VALUES ('QR-LOT003-2025', 'https://cafetrace.co/lote/LOT-003', '2025-01-19', 'SVG', 'LOT-003');
INSERT INTO cafetrace.qr_code (unique_code, url, generated_date, format, code_batch)
    VALUES ('QR-LOT004-2025', 'https://cafetrace.co/lote/LOT-004', '2025-01-24', 'PNG', 'LOT-004');
INSERT INTO cafetrace.qr_code (unique_code, url, generated_date, format, code_batch)
    VALUES ('QR-LOT005-2025', 'https://cafetrace.co/lote/LOT-005', '2025-01-29', 'PDF', 'LOT-005');

-- ============================================================
-- 13. INVOICE (status pending para que el trigger no bloquee)
-- ============================================================
INSERT INTO cafetrace.invoice (id_invoice, invoice_date, total_price, status, buyer_id)
    VALUES ('INV-001', '2025-02-15', 0, 'pending', 6);
INSERT INTO cafetrace.invoice (id_invoice, invoice_date, total_price, status, buyer_id)
    VALUES ('INV-002', '2025-02-16', 0, 'pending', 7);
INSERT INTO cafetrace.invoice (id_invoice, invoice_date, total_price, status, buyer_id)
    VALUES ('INV-003', '2025-02-17', 0, 'pending', 6);
INSERT INTO cafetrace.invoice (id_invoice, invoice_date, total_price, status, buyer_id)
    VALUES ('INV-004', '2025-02-18', 0, 'pending', 7);
INSERT INTO cafetrace.invoice (id_invoice, invoice_date, total_price, status, buyer_id)
    VALUES ('INV-005', '2025-02-19', 0, 'pending', 8);

-- ============================================================
-- 14. INVOICE_DETAIL
-- (subtotal y total_price se calculan solos con los triggers)
-- ============================================================
INSERT INTO cafetrace.invoice_detail (id_invoice_detail, quantity_kg, unit_price, subtotal, invoice_id, code_batch)
    VALUES ('DET-001', 200, 18500, 0, 'INV-001', 'LOT-001');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail, quantity_kg, unit_price, subtotal, invoice_id, code_batch)
    VALUES ('DET-002', 300, 21000, 0, 'INV-002', 'LOT-002');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail, quantity_kg, unit_price, subtotal, invoice_id, code_batch)
    VALUES ('DET-003', 111, 25000, 0, 'INV-003', 'LOT-003');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail, quantity_kg, unit_price, subtotal, invoice_id, code_batch)
    VALUES ('DET-004', 400, 19000, 0, 'INV-004', 'LOT-004');
INSERT INTO cafetrace.invoice_detail (id_invoice_detail, quantity_kg, unit_price, subtotal, invoice_id, code_batch)
    VALUES ('DET-005', 500, 17500, 0, 'INV-005', 'LOT-005');

-- Actualizar estados finales despues de insertar los detalles
UPDATE cafetrace.invoice SET status = 'completed'  WHERE id_invoice = 'INV-001';
UPDATE cafetrace.invoice SET status = 'completed'  WHERE id_invoice = 'INV-002';
UPDATE cafetrace.invoice SET status = 'in_process' WHERE id_invoice = 'INV-003';
UPDATE cafetrace.invoice SET status = 'confirmed'  WHERE id_invoice = 'INV-005';

-- ============================================================
-- VERIFICACION
-- ============================================================
SELECT code_batch, variety, total_weight, available_weight FROM cafetrace.batch ORDER BY code_batch;
SELECT id_invoice, total_price, status FROM cafetrace.invoice ORDER BY id_invoice;
SELECT id_invoice_detail, quantity_kg, unit_price, subtotal FROM cafetrace.invoice_detail ORDER BY id_invoice_detail;

-- ============================================================
-- FIN DEL SCRIPT DML CORREGIDO
-- ============================================================