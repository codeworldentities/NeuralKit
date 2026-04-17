-- Auto-generated: procedures — procedures v8500
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_8500 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8500_name
    ON procedures_—_procedures_8500(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8500_created
    ON procedures_—_procedures_8500(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_8500 (name, status)
VALUES
    ('item_0', 'val_0_8500'),
    ('item_1', 'val_1_8500'),
    ('item_2', 'val_2_8500'),
    ('item_3', 'val_3_8500'),
    ('item_4', 'val_4_8500'),
    ('item_5', 'val_5_8500'),
    ('item_6', 'val_6_8500'),
    ('item_7', 'val_7_8500'),

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_8500_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_8500
GROUP BY name
ORDER BY total DESC;
