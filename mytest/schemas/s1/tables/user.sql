-- Table: s1.user

-- DROP TABLE IF EXISTS s1."user";

CREATE TABLE IF NOT EXISTS s1."user"
(
    id integer NOT NULL DEFAULT nextval('s1.user_id_seq'::regclass),
    email character varying(255) COLLATE pg_catalog."default",
    first_name character varying(255) COLLATE pg_catalog."default",
    last_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT user_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s1."user"
    OWNER to postgres;