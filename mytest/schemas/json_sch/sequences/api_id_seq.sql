-- SEQUENCE: json_sch.api_id_seq

-- DROP SEQUENCE IF EXISTS json_sch.api_id_seq;

CREATE SEQUENCE IF NOT EXISTS json_sch.api_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1
    OWNED BY api.id;

ALTER SEQUENCE json_sch.api_id_seq
    OWNER TO postgres;