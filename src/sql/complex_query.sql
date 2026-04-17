-- Auto-generated: complex query v7068
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_7068 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_7068_name
    ON complex_query_7068(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_7068_created
    ON complex_query_7068(created_at DESC);

-- Seed data
INSERT INTO complex_query_7068 (name, is_active)
VALUES
    ('item_0', 'val_0_7068'),
    ('item_1', 'val_1_7068');

-- View
CREATE OR REPLACE VIEW v_complex_query_7068_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_7068
GROUP BY name
ORDER BY total DESC;
