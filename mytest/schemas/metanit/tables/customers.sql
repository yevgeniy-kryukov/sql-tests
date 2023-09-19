-- Table: metanit.customers

-- DROP TABLE IF EXISTS metanit.customers;

CREATE TABLE IF NOT EXISTS metanit.customers
(
    id integer NOT NULL DEFAULT nextval('metanit.customers_id_seq'::regclass),
    firstname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    lastname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    accountsum numeric DEFAULT 0,
    CONSTRAINT customers_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS metanit.customers
    OWNER to postgres;