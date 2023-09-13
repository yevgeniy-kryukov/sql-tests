-- Table: sch2.t5

-- DROP TABLE IF EXISTS sch2.t5;

CREATE TABLE IF NOT EXISTS sch2.t5
(
    id integer,
    pay_type integer,
    pay_date date,
    pay_sum numeric
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch2.t5
    OWNER to postgres;