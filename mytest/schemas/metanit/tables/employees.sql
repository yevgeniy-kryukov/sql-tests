-- Table: metanit.employees

-- DROP TABLE IF EXISTS metanit.employees;

CREATE TABLE IF NOT EXISTS metanit.employees
(
    id integer NOT NULL DEFAULT nextval('metanit.employees_id_seq'::regclass),
    firstname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    lastname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS metanit.employees
    OWNER to postgres;