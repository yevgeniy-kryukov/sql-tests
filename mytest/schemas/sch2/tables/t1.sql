-- Table: sch2.t1

-- DROP TABLE IF EXISTS sch2.t1;

CREATE TABLE IF NOT EXISTS sch2.t1
(
    a integer,
    b integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.t1
    OWNER to postgres;