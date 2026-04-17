-- Auto-generated: table creation v9860
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_9860 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_9860_name
    ON table_creation_9860(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_9860_created
    ON table_creation_9860(created_at DESC);

-- Seed data
INSERT INTO table_creation_9860 (name, email)
VALUES
    ('item_0', 'val_0_9860'),
    ('item_1', 'val_1_9860'),
    ('item_2', 'val_2_9860'),
    ('item_3', 'val_3_9860'),
    ('item_4', 'val_4_9860'),
    ('item_5', 'val_5_9860'),
    ('item_6', 'val_6_9860'),
    ('item_7', 'val_7_9860');

-- View
CREATE OR REPLACE VIEW v_table_creation_9860_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_9860
GROUP BY name
ORDER BY total DESC;
