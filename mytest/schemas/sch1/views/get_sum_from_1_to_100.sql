-- View: sch1.get_sum_from_1_to_100

-- DROP VIEW sch1.get_sum_from_1_to_100;

CREATE OR REPLACE VIEW sch1.get_sum_from_1_to_100
 AS
 WITH RECURSIVE t(n) AS (
         SELECT 1
        UNION ALL
         SELECT t_1.n + 1
           FROM t t_1
          WHERE t_1.n < 100
        )
 SELECT sum(t.n) AS sum
   FROM t;

ALTER TABLE sch1.get_sum_from_1_to_100
    OWNER TO postgres;

