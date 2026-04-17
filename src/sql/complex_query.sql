-- Auto-generated: complex query v8368
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_8368 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_8368_name
    ON complex_query_8368(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_8368_created
    ON complex_query_8368(created_at DESC);

-- Seed data
INSERT INTO complex_query_8368 (name, email)
VALUES
    ('item_0', 'val_0_8368'),
    ('item_1', 'val_1_8368'),
    ('item_2', 'val_2_8368'),
    ('item_3', 'val_3_8368'),
    ('item_4', 'val_4_8368'),
    ('item_5', 'val_5_8368');

-- View
CREATE OR REPLACE VIEW v_complex_query_8368_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_8368
GROUP BY name
ORDER BY total DESC;
