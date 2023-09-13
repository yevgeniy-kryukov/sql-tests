-- Table: sch2.grade

-- DROP TABLE IF EXISTS sch2.grade;

CREATE TABLE IF NOT EXISTS sch2.grade
(
    grade integer,
    losal numeric,
    hisal numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.grade
    OWNER to postgres;