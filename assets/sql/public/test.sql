-- public is the schema, test is the table name.
CREATE TABLE public.test (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    first_name text,
    last_nane text,
    access_level integer,
    phone_number text,
    email UNIQUE text,
);
