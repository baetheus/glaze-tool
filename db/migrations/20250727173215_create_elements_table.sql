-- migrate:up
CREATE TABLE elements(
  atomic_number INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  symbol TEXT NOT NULL,
  category TEXT NOT NULL,
  source TEXT NOT NULL,
  summary TEXT NOT NULL,
  atomic_mass REAL NOT NULL,
  boil REAL,
  melt REAL,
  discovered_by TEXT,
  named_by TEXT,
  created_at TEXT DEFAULT (datetime('now')),
  updated_at TEXT DEFAULT (datetime('now'))
) STRICT;


-- migrate:down
DROP TABLE IF EXISTS elements;
