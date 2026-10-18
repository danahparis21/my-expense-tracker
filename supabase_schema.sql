-- ==============================================================================
-- DANAH'S FINANCE TRACKER - SUPABASE DATABASE SCHEMA
-- ==============================================================================
-- Run this SQL in your Supabase project's SQL Editor (Dashboard -> SQL Editor -> New Query)

-- 1. Create finance_sync table to store all groups, expenses, and payment cards
CREATE TABLE IF NOT EXISTS finance_sync (
    id TEXT PRIMARY KEY DEFAULT 'danah_store',
    data JSONB NOT NULL DEFAULT '{"groups":[], "payments":{}}'::jsonb,
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Insert initial record if not exists
INSERT INTO finance_sync (id, data)
VALUES ('danah_store', '{"groups":[], "payments":{}}'::jsonb)
ON CONFLICT (id) DO NOTHING;

-- 3. Enable Row Level Security (RLS)
ALTER TABLE finance_sync ENABLE ROW LEVEL SECURITY;

-- 4. Create policy for anonymous read (guests can view their invoices via link)
CREATE POLICY "Public Read Access"
ON finance_sync
FOR SELECT
TO anon, authenticated
USING (true);

-- 5. Create policy for updates (Danah & guest payment reports can update store)
CREATE POLICY "Public Upsert Access"
ON finance_sync
FOR ALL
TO anon, authenticated
USING (true)
WITH CHECK (true);

-- 6. Enable Realtime (optional, for live updates across devices)
ALTER PUBLICATION supabase_realtime ADD TABLE finance_sync;
