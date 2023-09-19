-- Table: tproger.orders

-- DROP TABLE IF EXISTS tproger.orders;

CREATE TABLE IF NOT EXISTS tproger.orders
(
    ord_id integer NOT NULL,
    ord_datetime timestamp without time zone NOT NULL,
    ord_an_id integer NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (ord_id),
    CONSTRAINT orders_an_fk FOREIGN KEY (ord_an_id)
        REFERENCES tproger.analysis (an_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS tproger.orders
    OWNER to postgres;

COMMENT ON TABLE tproger.orders
    IS 'Заказы';

COMMENT ON COLUMN tproger.orders.ord_datetime
    IS 'дата и время заказа';

COMMENT ON COLUMN tproger.orders.ord_an_id
    IS 'ID анализа';