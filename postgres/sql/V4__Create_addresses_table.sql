-- V4__Create_addresses_table.sql
CREATE TABLE IF NOT EXISTS addresses (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(), -- Primary Key with auto-generated GUID
    name_id UUID NOT NULL, -- Foreign Key that references the Primary Key of the names table
    start_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP, -- Start Date with current UTC
    end_date TIMESTAMP WITH TIME ZONE, -- End Date allowing NULLs
    address_1 VARCHAR(255) NOT NULL, -- Address Line 1, cannot be null
    address_2 VARCHAR(255), -- Address Line 2, can be null
    city VARCHAR(255) NOT NULL, -- City, cannot be null
    state VARCHAR(255) NOT NULL, -- State, cannot be null
    zip_code VARCHAR(20) NOT NULL, -- Zip Code, cannot be null
    CONSTRAINT fk_names FOREIGN KEY (name_id) REFERENCES names(id) -- Foreign Key Constraint
);

-- Note: Adjust VARCHAR lengths as per your requirements

