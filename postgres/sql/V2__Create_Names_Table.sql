-- Create Extension for UUID (if it doesn't exist)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create Table
CREATE TABLE IF NOT EXISTS names (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(), -- Primary key with auto-generated GUID
    start_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP, -- UTC Timestamp on insert
    f_name VARCHAR(255) NOT NULL, -- First name, not null
    m_name VARCHAR(255), -- Middle name, null allowed
    l_name VARCHAR(255) NOT NULL -- Last name, not null
);

-- Note: You may want to adjust VARCHAR length according to your requirements

