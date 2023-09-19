-- Table: tproger.analysis

-- DROP TABLE IF EXISTS tproger.analysis;

CREATE TABLE IF NOT EXISTS tproger.analysis
(
    an_id integer NOT NULL,
    an_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    an_cost numeric NOT NULL,
    an_price numeric NOT NULL,
    an_group_id integer NOT NULL,
    CONSTRAINT analysis_pk PRIMARY KEY (an_id),
    CONSTRAINT analysis_group_fk FOREIGN KEY (an_group_id)
        REFERENCES tproger.groups (gr_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS tproger.analysis
    OWNER to postgres;

COMMENT ON TABLE tproger.analysis
    IS 'Справочник анализов';

COMMENT ON COLUMN tproger.analysis.an_id
    IS 'ID анализа';

COMMENT ON COLUMN tproger.analysis.an_name
    IS 'название анализа';

COMMENT ON COLUMN tproger.analysis.an_cost
    IS 'себестоимость анализа';

COMMENT ON COLUMN tproger.analysis.an_price
    IS 'розничная цена анализа';

COMMENT ON COLUMN tproger.analysis.an_group_id
    IS 'ID группы анализов';