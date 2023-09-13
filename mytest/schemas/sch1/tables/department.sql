-- Table: sch1.department

-- DROP TABLE IF EXISTS sch1.department;

CREATE TABLE IF NOT EXISTS sch1.department
(
    id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT department_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch1.department
    OWNER to postgres;

COMMENT ON TABLE sch1.department
    IS 'Подразделение';

COMMENT ON COLUMN sch1.department.id
    IS 'Идентификатор';

COMMENT ON COLUMN sch1.department.name
    IS 'Наименование';