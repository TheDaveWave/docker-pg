-- public is the schema, test is the table name.
CREATE TABLE public.test (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name TEXT,
    last_name TEXT,
    access_level INT,
    phone_number VARCHAR(255),
    email TEXT UNIQUE,
    address_id uuid
    -- CONSTRAINT fk_address_id
    --     FOREIGN KEY(address_id)
    --     REFERENCES public.address(id)
);
