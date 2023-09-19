-- SEQUENCE: metanit.customers_id_seq

-- DROP SEQUENCE IF EXISTS metanit.customers_id_seq;

CREATE SEQUENCE IF NOT EXISTS metanit.customers_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1
    OWNED BY customers.id;

ALTER SEQUENCE metanit.customers_id_seq
    OWNER TO postgres;