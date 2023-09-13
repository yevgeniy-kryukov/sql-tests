-- Table: sch2.orders

-- DROP TABLE IF EXISTS sch2.orders;

CREATE TABLE IF NOT EXISTS sch2.orders
(
    id integer NOT NULL,
    orders_count integer NOT NULL,
    orders_date date NOT NULL,
    customers_id integer NOT NULL,
    salespeople_id integer NOT NULL,
    CONSTRAINT orders_pk PRIMARY KEY (id),
    CONSTRAINT orders_cust_id_fk FOREIGN KEY (customers_id)
        REFERENCES sch2.customers (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT orders_sale_id_fk FOREIGN KEY (salespeople_id)
        REFERENCES sch2.salespeople (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.orders
    OWNER to postgres;