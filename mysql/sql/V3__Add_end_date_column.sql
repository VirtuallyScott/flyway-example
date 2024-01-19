-- Filename: V3_Add_end_date_column.sql

ALTER TABLE names
ADD COLUMN end_date TIMESTAMP NULL;

