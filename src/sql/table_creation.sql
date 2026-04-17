-- Auto-generated: table creation v6137
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_6137 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_6137_name
    ON table_creation_6137(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_6137_created
    ON table_creation_6137(created_at DESC);

-- Seed data
INSERT INTO table_creation_6137 (name, status)
VALUES
    ('item_0', 'val_0_6137'),
    ('item_1', 'val_1_6137'),
    ('item_2', 'val_2_6137'),
    ('item_3', 'val_3_6137'),
    ('item_4', 'val_4_6137'),
    ('item_5', 'val_5_6137'),
    ('item_6', 'val_6_6137'),
    ('item_7', 'val_7_6137'),

-- View
CREATE OR REPLACE VIEW v_table_creation_6137_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_6137
GROUP BY name
ORDER BY total DESC;
