-- Table: sch2.personal

-- DROP TABLE IF EXISTS sch2.personal;

CREATE TABLE IF NOT EXISTS sch2.personal
(
    empno integer,
    ename character varying(255) COLLATE pg_catalog."default",
    job character varying(255) COLLATE pg_catalog."default",
    mgr integer,
    hiredate date,
    sal numeric,
    comm numeric,
    deptno integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.personal
    OWNER to postgres;