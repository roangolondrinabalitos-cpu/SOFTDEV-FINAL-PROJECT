-- Create users table
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  name TEXT,
  phone TEXT,
  gender TEXT,
  dob JSONB,
  avatar TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);
