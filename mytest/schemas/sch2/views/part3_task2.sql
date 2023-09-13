-- View: sch2.part3_task2

-- DROP VIEW sch2.part3_task2;

CREATE OR REPLACE VIEW sch2.part3_task2
 AS
 SELECT t1.deptno,
    t1.dname
   FROM sch2.department t1
  WHERE NOT (EXISTS ( SELECT 1
           FROM sch2.personal t2
          WHERE t2.deptno = t1.deptno));

ALTER TABLE sch2.part3_task2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part3_task2
    IS 'Найти все отделы, не имеющие служащих используя подзапрос. Вывести в результирующие столбцы: deptno, dname';

