    CREATE TABLE IF NOT EXISTS public.employee
(
    id bigint NOT NULL DEFAULT nextval('employee_id_seq'::regclass),
    first_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(50) COLLATE pg_catalog."default",
    gender character varying(6) COLLATE pg_catalog."default" NOT NULL,
    country_of_birth character varying(50) COLLATE pg_catalog."default" NOT NULL,
    date_of_birth date NOT NULL,
    car_id bigint,
    CONSTRAINT employee_pkey PRIMARY KEY (id),
    CONSTRAINT employee_car_id_key UNIQUE (car_id),
    CONSTRAINT unique_email_addres UNIQUE (email),
    CONSTRAINT employee_car_id_fkey FOREIGN KEY (car_id)
        REFERENCES public.car (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT gender_constraint CHECK (gender::text = 'Female'::text OR gender::text = 'Male'::text)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;

    CREATE TABLE IF NOT EXISTS public.holiday
(
    id bigint NOT NULL DEFAULT nextval('holiday_id_seq'::regclass),
    destination_country character varying(50) COLLATE pg_catalog."default" NOT NULL,
    destination_city character varying(50) COLLATE pg_catalog."default" NOT NULL,
    price numeric(19,2) NOT NULL,
    CONSTRAINT holiday_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.holiday
    OWNER to postgres;

    CREATE TABLE IF NOT EXISTS public.car
(
    id bigint NOT NULL DEFAULT nextval('car_id_seq'::regclass),
    car_make character varying(50) COLLATE pg_catalog."default" NOT NULL,
    car_model character varying(50) COLLATE pg_catalog."default" NOT NULL,
    car_year character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT car_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.car
    OWNER to postgres;