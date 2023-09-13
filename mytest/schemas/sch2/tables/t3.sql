-- Table: sch2.t3

-- DROP TABLE IF EXISTS sch2.t3;

CREATE TABLE IF NOT EXISTS sch2.t3
(
    a integer,
    b integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.t3
    OWNER to postgres;