-- Table: s1.t1

-- DROP TABLE IF EXISTS s1.t1;

CREATE TABLE IF NOT EXISTS s1.t1
(
    id bigint NOT NULL,
    p1 character varying(1000) COLLATE pg_catalog."default",
    p2 character varying(1000) COLLATE pg_catalog."default",
    p3 character varying(1000) COLLATE pg_catalog."default",
    p4 character varying(1000) COLLATE pg_catalog."default",
    p5 character varying(1000) COLLATE pg_catalog."default",
    CONSTRAINT t1_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s1.t1
    OWNER to postgres;