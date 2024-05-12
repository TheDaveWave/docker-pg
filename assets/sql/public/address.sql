CREATE TABLE public.address (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    address TEXT NOT NULL,
    address_2 TEXT,
    city VARCHAR(255),
    state VARCHAR(255),
    zip INT,
    country VARCHAR(255),
    UNIQUE(address, address_2),
    UNIQUE(address, city, state, zip)
)