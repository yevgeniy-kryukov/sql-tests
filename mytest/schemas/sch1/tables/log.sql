-- Table: sch1.log

-- DROP TABLE IF EXISTS sch1.log;

CREATE TABLE IF NOT EXISTS sch1.log
(
    user_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    sel_per_tm timestamp without time zone NOT NULL,
    action_name character varying(255) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch1.log
    OWNER to postgres;