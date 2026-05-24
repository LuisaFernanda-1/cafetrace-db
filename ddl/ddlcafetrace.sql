
-- CaféTrace - Script DDL PostgreSQL
-- Autores: Luisa Fernanda Ovallos Carrascal 

-- Crear schema si no existe
CREATE SCHEMA IF NOT EXISTS cafetrace;

-- ============================================================
-- 1. DEPARTMENT
-- ============================================================
CREATE TABLE cafetrace.department (
    id_department   VARCHAR(5)      NOT NULL,
    name            VARCHAR(35)     NOT NULL,
    CONSTRAINT department_pk PRIMARY KEY (id_department)
);

-- ============================================================
-- 2. MUNICIPALITY
-- ============================================================
CREATE TABLE cafetrace.municipality (
    id_municipality     VARCHAR(5)      NOT NULL,
    name                VARCHAR(25)     NOT NULL,
    department_id       VARCHAR(5)      NOT NULL,
    CONSTRAINT municipality_pk PRIMARY KEY (id_municipality),
    CONSTRAINT municipality_department_fk FOREIGN KEY (department_id)
        REFERENCES cafetrace.department (id_department)
);

-- ============================================================
-- 3. PERSON
-- ============================================================
CREATE TABLE cafetrace.person (
    id              SERIAL          NOT NULL,
    first_name      VARCHAR(30)     NOT NULL,
    second_name     VARCHAR(30),
    last_name_1     VARCHAR(50)     NOT NULL,
    last_name_2     VARCHAR(50),
    email           VARCHAR(100)    NOT NULL,
    phone           VARCHAR(15)     NOT NULL,
    register_date   DATE            NOT NULL DEFAULT CURRENT_DATE,
    status          VARCHAR(20)     NOT NULL DEFAULT 'pending',
    CONSTRAINT person_pk PRIMARY KEY (id),
    CONSTRAINT person_email_uk UNIQUE (email),
    CONSTRAINT person_status_chk CHECK (status IN ('pending', 'approved', 'rejected'))
);

-- ============================================================
-- 4. FARMER (hereda de PERSON)
-- ============================================================
CREATE TABLE cafetrace.farmer (
    id_farmer           INTEGER         NOT NULL,
    experience_years    VARCHAR(2)      NOT NULL,
    profile_photo       TEXT,
    CONSTRAINT farmer_pk PRIMARY KEY (id_farmer),
    CONSTRAINT farmer_person_fk FOREIGN KEY (id_farmer)
        REFERENCES cafetrace.person (id)
);

-- ============================================================
-- 5. BUYER (hereda de PERSON)
-- ============================================================
CREATE TABLE cafetrace.buyer (
    id_buyer        INTEGER         NOT NULL,
    company_name    VARCHAR(100)    NOT NULL,
    company_type    VARCHAR(20),
    CONSTRAINT buyer_pk PRIMARY KEY (id_buyer),
    CONSTRAINT buyer_person_fk FOREIGN KEY (id_buyer)
        REFERENCES cafetrace.person (id),
    CONSTRAINT buyer_type_chk CHECK (company_type IN
        ('roaster', 'distributor', 'cafe', 'exporter', 'other'))
);

-- ============================================================
-- 6. ADMIN (hereda de PERSON)
-- ============================================================
CREATE TABLE cafetrace.admin (
    id_admin            INTEGER         NOT NULL,
    role                VARCHAR(30)     NOT NULL,
    last_access_date    DATE            NOT NULL DEFAULT CURRENT_DATE,
    CONSTRAINT admin_pk PRIMARY KEY (id_admin),
    CONSTRAINT admin_person_fk FOREIGN KEY (id_admin)
        REFERENCES cafetrace.person (id)
);

-- Trigger: actualizar last_access_date automaticamente al hacer UPDATE
CREATE OR REPLACE FUNCTION cafetrace.fn_admin_access_date()
RETURNS TRIGGER AS $$
BEGIN
    NEW.last_access_date := CURRENT_DATE;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_admin_access_date
BEFORE UPDATE ON cafetrace.admin
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_admin_access_date();

-- ============================================================
-- 7. FARM
-- ============================================================
CREATE TABLE cafetrace.farm (
    id_farm                     VARCHAR(5)      NOT NULL,
    name                        VARCHAR(100)    NOT NULL,
    hectares                    NUMERIC         NOT NULL,
    description                 VARCHAR(250),
    municipality_id             VARCHAR(5)      NOT NULL,
    municipality_department_id  VARCHAR(5)      NOT NULL,
    farmer_id                   INTEGER         NOT NULL,
    CONSTRAINT farm_pk PRIMARY KEY (id_farm),
    CONSTRAINT farm_municipality_fk FOREIGN KEY (municipality_id)
        REFERENCES cafetrace.municipality (id_municipality),
    CONSTRAINT farm_farmer_fk FOREIGN KEY (farmer_id)
        REFERENCES cafetrace.farmer (id_farmer),
    CONSTRAINT farm_hectares_chk CHECK (hectares > 0)
);

-- ============================================================
-- 8. BATCH
-- ============================================================
CREATE TABLE cafetrace.batch (
    code_batch          VARCHAR(10)     NOT NULL,
    variety             VARCHAR(50)     NOT NULL,
    total_weight        NUMERIC         NOT NULL,
    available_weight    NUMERIC         NOT NULL,
    price_kg            NUMERIC         NOT NULL,
    altitude            NUMERIC         NOT NULL,
    description         VARCHAR(500)    NOT NULL,
    quality_score       NUMERIC,
    tasting_notes       VARCHAR(255),
    farm_id             VARCHAR(5)      NOT NULL,
    CONSTRAINT batch_pk PRIMARY KEY (code_batch),
    CONSTRAINT batch_farm_fk FOREIGN KEY (farm_id)
        REFERENCES cafetrace.farm (id_farm),
    CONSTRAINT batch_weight_chk CHECK (available_weight >= 0),
    CONSTRAINT batch_available_chk CHECK (available_weight <= total_weight),
    CONSTRAINT batch_quality_chk CHECK (quality_score BETWEEN 0 AND 100)
);

-- ============================================================
-- 9. PRODUCTIVE_PROCESS
-- ============================================================
CREATE TABLE cafetrace.productive_process (
    id_productive_process   SERIAL          NOT NULL,
    harvest_date            DATE            NOT NULL,
    pulping_date            DATE            NOT NULL,
    fermentation_date       DATE            NOT NULL,
    washing_date            DATE            NOT NULL,
    drying_date             DATE            NOT NULL,
    code_batch              VARCHAR(10)     NOT NULL,
    CONSTRAINT productive_process_pk PRIMARY KEY (id_productive_process),
    CONSTRAINT pp_batch_fk FOREIGN KEY (code_batch)
        REFERENCES cafetrace.batch (code_batch),
    CONSTRAINT pp_dates_chk CHECK (
        pulping_date      >= harvest_date AND
        fermentation_date >= pulping_date AND
        washing_date      >= fermentation_date AND
        drying_date       >= washing_date
    )
);

-- ============================================================
-- 10. PHOTO
-- ============================================================
CREATE TABLE cafetrace.photo (
    id_photo        SERIAL          NOT NULL,
    file_path       VARCHAR(150)    NOT NULL,
    stage           VARCHAR(50)     NOT NULL,
    upload_date     DATE            NOT NULL DEFAULT CURRENT_DATE,
    description     VARCHAR(150),
    code_batch      VARCHAR(10)     NOT NULL,
    CONSTRAINT photo_pk PRIMARY KEY (id_photo),
    CONSTRAINT photo_batch_fk FOREIGN KEY (code_batch)
        REFERENCES cafetrace.batch (code_batch),
    CONSTRAINT photo_stage_chk CHECK (stage IN
        ('harvest', 'pulping', 'fermentation', 'washing', 'drying'))
);

-- ============================================================
-- 11. CERTIFICATION
-- ============================================================
CREATE TABLE cafetrace.certification (
    id_certification    SERIAL          NOT NULL,
    type                VARCHAR(50)     NOT NULL,
    is_certified        CHAR(1)         NOT NULL,
    issue_date          DATE            NOT NULL,
    expiry_date         DATE,
    code_batch          VARCHAR(10)     NOT NULL,
    CONSTRAINT certification_pk PRIMARY KEY (id_certification),
    CONSTRAINT certification_batch_fk FOREIGN KEY (code_batch)
        REFERENCES cafetrace.batch (code_batch),
    CONSTRAINT certification_chk CHECK (is_certified IN ('Y', 'N'))
);

-- ============================================================
-- 12. QR_CODE
-- ============================================================
CREATE TABLE cafetrace.qr_code (
    id_code         SERIAL          NOT NULL,
    unique_code     VARCHAR(100)    NOT NULL,
    url             VARCHAR(500)    NOT NULL,
    generated_date  DATE            NOT NULL DEFAULT CURRENT_DATE,
    format          VARCHAR(10),
    code_batch      VARCHAR(10)     NOT NULL,
    CONSTRAINT qr_code_pk PRIMARY KEY (id_code),
    CONSTRAINT qr_code_uk UNIQUE (unique_code),
    CONSTRAINT qr_code_batch_fk FOREIGN KEY (code_batch)
        REFERENCES cafetrace.batch (code_batch),
    CONSTRAINT qr_format_chk CHECK (format IN ('PNG', 'SVG', 'PDF'))
);

-- ============================================================
-- 13. INVOICE
-- ============================================================
CREATE TABLE cafetrace.invoice (
    id_invoice      VARCHAR(10)     NOT NULL,
    invoice_date    DATE            NOT NULL DEFAULT CURRENT_DATE,
    total_price     NUMERIC         NOT NULL DEFAULT 0,
    status          VARCHAR(10)     NOT NULL DEFAULT 'pending',
    delivery_date   DATE,
    buyer_id        INTEGER         NOT NULL,
    CONSTRAINT invoice_pk PRIMARY KEY (id_invoice),
    CONSTRAINT invoice_buyer_fk FOREIGN KEY (buyer_id)
        REFERENCES cafetrace.buyer (id_buyer),
    CONSTRAINT invoice_status_chk CHECK (status IN
        ('pending', 'confirmed', 'in_process', 'completed', 'cancelled'))
);

-- Trigger: no permitir editar factura completada o cancelada
CREATE OR REPLACE FUNCTION cafetrace.fn_invoice_no_edit()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.status IN ('completed', 'cancelled') THEN
        RAISE EXCEPTION 'No se puede modificar una factura con estado: %', OLD.status;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_invoice_no_edit
BEFORE UPDATE ON cafetrace.invoice
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_invoice_no_edit();

-- ============================================================
-- 14. INVOICE_DETAIL
-- ============================================================
CREATE TABLE cafetrace.invoice_detail (
    id_invoice_detail   VARCHAR(10)     NOT NULL,
    quantity_kg         NUMERIC         NOT NULL,
    unit_price          NUMERIC         NOT NULL,
    subtotal            NUMERIC         NOT NULL DEFAULT 0,
    invoice_id          VARCHAR(10)     NOT NULL,
    code_batch          VARCHAR(10)     NOT NULL,
    CONSTRAINT invoice_detail_pk PRIMARY KEY (id_invoice_detail),
    CONSTRAINT invoice_detail_invoice_fk FOREIGN KEY (invoice_id)
        REFERENCES cafetrace.invoice (id_invoice),
    CONSTRAINT invoice_detail_batch_fk FOREIGN KEY (code_batch)
        REFERENCES cafetrace.batch (code_batch),
    CONSTRAINT invoice_detail_qty_chk CHECK (quantity_kg > 0),
    CONSTRAINT invoice_detail_price_chk CHECK (unit_price > 0)
);

-- Trigger: calcular subtotal automaticamente
CREATE OR REPLACE FUNCTION cafetrace.fn_invoice_detail_subtotal()
RETURNS TRIGGER AS $$
BEGIN
    NEW.subtotal := NEW.quantity_kg * NEW.unit_price;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_invoice_detail_subtotal
BEFORE INSERT OR UPDATE ON cafetrace.invoice_detail
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_invoice_detail_subtotal();

-- Trigger: actualizar total_price en invoice al agregar detalle
CREATE OR REPLACE FUNCTION cafetrace.fn_invoice_update_total()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE cafetrace.invoice
    SET total_price = (
        SELECT COALESCE(SUM(subtotal), 0)
        FROM cafetrace.invoice_detail
        WHERE invoice_id = NEW.invoice_id
    )
    WHERE id_invoice = NEW.invoice_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_invoice_update_total
AFTER INSERT OR UPDATE ON cafetrace.invoice_detail
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_invoice_update_total();

-- Trigger: verificar stock disponible antes de insertar detalle
CREATE OR REPLACE FUNCTION cafetrace.fn_batch_check_stock()
RETURNS TRIGGER AS $$
DECLARE
    v_available NUMERIC;
BEGIN
    SELECT available_weight INTO v_available
    FROM cafetrace.batch
    WHERE code_batch = NEW.code_batch;

    IF NEW.quantity_kg > v_available THEN
        RAISE EXCEPTION 'Stock insuficiente. Disponible: % kg. Solicitado: % kg.',
            v_available, NEW.quantity_kg;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_batch_check_stock
BEFORE INSERT ON cafetrace.invoice_detail
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_batch_check_stock();

-- Trigger: descontar stock al confirmar detalle de factura
CREATE OR REPLACE FUNCTION cafetrace.fn_batch_update_stock()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE cafetrace.batch
    SET available_weight = available_weight - NEW.quantity_kg
    WHERE code_batch = NEW.code_batch;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_batch_update_stock
AFTER INSERT ON cafetrace.invoice_detail
FOR EACH ROW
EXECUTE FUNCTION cafetrace.fn_batch_update_stock();

-- ============================================================
-- FIN DEL SCRIPT DDL PostgreSQL
-- ============================================================