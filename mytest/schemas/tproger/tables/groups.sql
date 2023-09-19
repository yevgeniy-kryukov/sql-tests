-- Table: tproger.groups

-- DROP TABLE IF EXISTS tproger.groups;

CREATE TABLE IF NOT EXISTS tproger.groups
(
    gr_id integer NOT NULL,
    gr_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    gr_temp numeric NOT NULL,
    CONSTRAINT groups_pk PRIMARY KEY (gr_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS tproger.groups
    OWNER to postgres;

COMMENT ON TABLE tproger.groups
    IS 'Справочник групп анализов';

COMMENT ON COLUMN tproger.groups.gr_id
    IS 'ID группы';

COMMENT ON COLUMN tproger.groups.gr_name
    IS 'название группы';

COMMENT ON COLUMN tproger.groups.gr_temp
    IS 'температурный режим хранения';