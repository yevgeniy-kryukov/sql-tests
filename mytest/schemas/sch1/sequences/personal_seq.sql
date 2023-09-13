-- SEQUENCE: sch1.personal_seq

-- DROP SEQUENCE IF EXISTS sch1.personal_seq;

CREATE SEQUENCE IF NOT EXISTS sch1.personal_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE sch1.personal_seq
    OWNER TO postgres;