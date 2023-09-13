-- Table: sch2.customers

-- DROP TABLE IF EXISTS sch2.customers;

CREATE TABLE IF NOT EXISTS sch2.customers
(
    id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    city character varying(255) COLLATE pg_catalog."default" NOT NULL,
    rating integer NOT NULL,
    CONSTRAINT customers_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.customers
    OWNER to postgres;