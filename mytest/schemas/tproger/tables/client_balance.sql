-- Table: tproger.client_balance

-- DROP TABLE IF EXISTS tproger.client_balance;

CREATE TABLE IF NOT EXISTS tproger.client_balance
(
    client_id integer NOT NULL,
    client_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    client_balance_date timestamp without time zone NOT NULL,
    client_balance_value numeric NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS tproger.client_balance
    OWNER to postgres;

COMMENT ON TABLE tproger.client_balance
    IS 'Балансы клиентов';

COMMENT ON COLUMN tproger.client_balance.client_id
    IS 'идентификатор клиента';

COMMENT ON COLUMN tproger.client_balance.client_name
    IS 'ФИО клиента';

COMMENT ON COLUMN tproger.client_balance.client_balance_date
    IS 'дата баланса клиента';

COMMENT ON COLUMN tproger.client_balance.client_balance_value
    IS 'значение баланса клиента';