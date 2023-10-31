-- View: s1.gen_data_for_table_t1

DROP VIEW s1.gen_data_for_table_t1 CASCADE;

CREATE OR REPLACE VIEW s1.gen_data_for_table_t1
 AS
 WITH RECURSIVE t1(id, p1, p2, p3, p4, p5, dt) AS (
         SELECT (select coalesce(max(id), 1) from s1.t1)::integer + 1,
            'p1'::text,
            'p2'::text,
            'p3'::text,
            'p4'::text,
            'p5'::text,
            '2021-01-01'::timestamp without time zone
        UNION ALL
         SELECT t1_1.id + 1 AS id,
            md5(random()::text) AS p1,
            md5(random()::text) AS p2,
            md5(random()::text) AS p3,
            md5(random()::text) AS p4,
            md5(random()::text) AS p5,
            current_date + (round(random()*100)||' days')::interval AS dt
           FROM t1 t1_1
          WHERE t1_1.id < 100
        )
 SELECT t1.id,
    t1.p1,
    t1.p2,
    t1.p3,
    t1.p4,
    t1.p5,
    t1.dt
   FROM t1;

ALTER TABLE s1.gen_data_for_table_t1
    OWNER TO postgres;

