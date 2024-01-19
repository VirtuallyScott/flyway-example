-- Filename: V1__Create_names_table.sql

CREATE TABLE IF NOT EXISTS names (
    id BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    f_name VARCHAR(255) NOT NULL,
    m_name VARCHAR(255),
    l_name VARCHAR(255) NOT NULL
);

