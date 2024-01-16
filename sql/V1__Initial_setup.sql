-- Create the names table
CREATE TABLE names (
    id TEXT PRIMARY KEY DEFAULT (lower(hex(randomblob(4))) || '-' || lower(hex(randomblob(2))) || '-4' || lower(substr(hex(randomblob(2)),2)) || '-' || substr('89AB',abs(random()) % 4 + 1, 1) || lower(substr(hex(randomblob(2)),2)) || '-' || lower(hex(randomblob(6)))),
    start_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    f_name TEXT NOT NULL,
    m_name TEXT,
    l_name TEXT NOT NULL
);
