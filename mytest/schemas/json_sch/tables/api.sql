-- Table: json_sch.api

-- DROP TABLE IF EXISTS json_sch.api;

CREATE TABLE IF NOT EXISTS json_sch.api
(
    jdoc jsonb,
    id integer NOT NULL DEFAULT nextval('json_sch.api_id_seq'::regclass),
    CONSTRAINT t1_pk PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS json_sch.api
    OWNER to postgres;
-- Index: api_jdoc_idx

-- DROP INDEX IF EXISTS json_sch.api_jdoc_idx;

CREATE INDEX IF NOT EXISTS api_jdoc_idx
    ON json_sch.api USING gin
    (jdoc)
    TABLESPACE pg_default;
-- Index: api_jdoc_idx2

-- DROP INDEX IF EXISTS json_sch.api_jdoc_idx2;

CREATE INDEX IF NOT EXISTS api_jdoc_idx2
    ON json_sch.api USING gin
    (jdoc jsonb_path_ops)
    TABLESPACE pg_default;