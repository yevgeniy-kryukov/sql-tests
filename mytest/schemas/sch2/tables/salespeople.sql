-- Table: sch2.salespeople

-- DROP TABLE IF EXISTS sch2.salespeople;

CREATE TABLE IF NOT EXISTS sch2.salespeople
(
    id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    comm numeric NOT NULL,
    city character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT salespeople_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.salespeople
    OWNER to postgres;