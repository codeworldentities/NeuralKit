-- Auto-generated: schema — database schema definition v9883
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_9883 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    email VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_9883_name
    ON schema_—_database_schema_definition_9883(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_9883_created
    ON schema_—_database_schema_definition_9883(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_9883 (name, metadata)
VALUES
    ('item_0', 'val_0_9883'),
    ('item_1', 'val_1_9883');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_9883_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_9883
GROUP BY name
ORDER BY total DESC;
