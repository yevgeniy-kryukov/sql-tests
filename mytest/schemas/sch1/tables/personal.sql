-- Table: sch1.personal

-- DROP TABLE IF EXISTS sch1.personal;

CREATE TABLE IF NOT EXISTS sch1.personal
(
    id integer NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    leader_id integer,
    salary numeric NOT NULL,
    department_id integer NOT NULL,
    CONSTRAINT personal_pk PRIMARY KEY (id),
    CONSTRAINT department_id_fk FOREIGN KEY (department_id)
        REFERENCES sch1.department (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT personal_leader_id_fk FOREIGN KEY (leader_id)
        REFERENCES sch1.personal (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS sch1.personal
    OWNER to postgres;
-- Index: personal_leader_id_idx

-- DROP INDEX IF EXISTS sch1.personal_leader_id_idx;

CREATE INDEX IF NOT EXISTS personal_leader_id_idx
    ON sch1.personal USING btree
    (leader_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Rule: on_ins_per ON sch1.personal

-- DROP Rule IF EXISTS on_ins_per ON sch1.personal;

CREATE OR REPLACE RULE on_ins_per AS
    ON INSERT TO sch1.personal
    DO
(INSERT INTO sch1.log (user_name, sel_per_tm, action_name)
  VALUES (CURRENT_USER, LOCALTIMESTAMP, 'insert'::character varying));


-- Rule: on_upd_per ON sch1.personal

-- DROP Rule IF EXISTS on_upd_per ON sch1.personal;

CREATE OR REPLACE RULE on_upd_per AS
    ON UPDATE TO sch1.personal
    DO
(INSERT INTO sch1.log (user_name, sel_per_tm, action_name)
  VALUES (CURRENT_USER, LOCALTIMESTAMP, 'update'::character varying));