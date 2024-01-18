-- Filename: V4__Add_end_date_column.sql

ALTER TABLE names
ADD COLUMN end_date TIMESTAMP NULL;

