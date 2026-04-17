-- Auto-generated: views — views v5812
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_5812 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5812_name
    ON views_—_views_5812(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_5812_created
    ON views_—_views_5812(created_at DESC);

-- Seed data
INSERT INTO views_—_views_5812 (name, score)
VALUES
    ('item_0', 'val_0_5812'),
    ('item_1', 'val_1_5812'),
    ('item_2', 'val_2_5812'),
    ('item_3', 'val_3_5812'),
    ('item_4', 'val_4_5812');

-- View
CREATE OR REPLACE VIEW v_views_—_views_5812_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_5812
GROUP BY name
ORDER BY total DESC;
