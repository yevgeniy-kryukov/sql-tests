-- Table: ship.battle

-- DROP TABLE IF EXISTS ship.battle;

CREATE TABLE IF NOT EXISTS ship.battle
(
    batt_name character varying(250) COLLATE pg_catalog."default",
    batt_date timestamp without time zone
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS ship.battle
    OWNER to postgres;

COMMENT ON TABLE ship.battle
    IS 'Битва';