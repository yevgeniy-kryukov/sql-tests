-- Table: sch2.t2

-- DROP TABLE IF EXISTS sch2.t2;

CREATE TABLE IF NOT EXISTS sch2.t2
(
    a integer,
    b integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.t2
    OWNER to postgres;