-- Auto-generated: stored procedure v7887
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_7887 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    score DECIMAL(10,2),
    counter INTEGER DEFAULT 0,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7887_name
    ON stored_procedure_7887(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7887_created
    ON stored_procedure_7887(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_7887 (name, email)
VALUES
    ('item_0', 'val_0_7887'),
    ('item_1', 'val_1_7887'),
    ('item_2', 'val_2_7887'),
    ('item_3', 'val_3_7887'),
    ('item_4', 'val_4_7887'),
    ('item_5', 'val_5_7887'),
    ('item_6', 'val_6_7887'),
    ('item_7', 'val_7_7887'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_7887_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_7887
GROUP BY name
ORDER BY total DESC;
