-- Table: sch2.department

-- DROP TABLE IF EXISTS sch2.department;

CREATE TABLE IF NOT EXISTS sch2.department
(
    deptno integer,
    dname character varying(255) COLLATE pg_catalog."default",
    loc character varying(255) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.department
    OWNER to postgres;