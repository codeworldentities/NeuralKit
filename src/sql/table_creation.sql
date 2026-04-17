-- Auto-generated: table creation v8822
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_8822 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_8822_name
    ON table_creation_8822(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_8822_created
    ON table_creation_8822(created_at DESC);

-- Seed data
INSERT INTO table_creation_8822 (name, is_active)
VALUES
    ('item_0', 'val_0_8822'),
    ('item_1', 'val_1_8822'),
    ('item_2', 'val_2_8822'),
    ('item_3', 'val_3_8822'),
    ('item_4', 'val_4_8822');

-- View
CREATE OR REPLACE VIEW v_table_creation_8822_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_8822
GROUP BY name
ORDER BY total DESC;
