-- View: sch2.part5_task1

-- DROP VIEW sch2.part5_task1;

CREATE OR REPLACE VIEW sch2.part5_task1
 AS
 SELECT t1.a AS t1a,
    t1.b AS t1b,
    t1.cnt AS t1cnt,
    t2.a AS t2a,
    t2.b AS t2b,
    t2.cnt AS t2cnt
   FROM ( SELECT t1_1.a,
            t1_1.b,
            count(*) AS cnt
           FROM sch2.t1 t1_1
          GROUP BY t1_1.a, t1_1.b) t1
     FULL JOIN ( SELECT t2_1.a,
            t2_1.b,
            count(*) AS cnt
           FROM sch2.t2 t2_1
          GROUP BY t2_1.a, t2_1.b) t2 ON t2.a = t1.a AND t2.b = t1.b AND t2.cnt = t1.cnt
  WHERE t1.a IS NULL OR t1.b IS NULL OR t1.cnt IS NULL OR t2.a IS NULL OR t2.b IS NULL OR t2.cnt IS NULL;

ALTER TABLE sch2.part5_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part5_task1
    IS 'Необходимо написать запрос, который позволит понять, идентичны ли данные в двух таблицах.
Порядок хранения данных в таблицах значения не имеет.';

