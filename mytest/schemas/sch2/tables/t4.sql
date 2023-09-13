-- Table: sch2.t4

-- DROP TABLE IF EXISTS sch2.t4;

CREATE TABLE IF NOT EXISTS sch2.t4
(
    a integer,
    b integer,
    id integer NOT NULL DEFAULT nextval('sch2.t4_id_seq'::regclass)
)

WITH (
    autovacuum_enabled = TRUE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.t4
    OWNER to postgres;