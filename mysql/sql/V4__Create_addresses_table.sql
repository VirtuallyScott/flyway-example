-- Filename: V4__Create_addresses_table.sql

CREATE TABLE IF NOT EXISTS addresses (
    id BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
    name_id BINARY(16) NOT NULL,
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP NULL,
    address_1 VARCHAR(255) NOT NULL,
    address_2 VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    CONSTRAINT fk_name_id FOREIGN KEY (name_id) REFERENCES names(id) 
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

