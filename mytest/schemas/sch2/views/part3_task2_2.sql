-- View: sch2.part3_task2_2

-- DROP VIEW sch2.part3_task2_2;

CREATE OR REPLACE VIEW sch2.part3_task2_2
 AS
 SELECT t1.deptno,
    t1.dname
   FROM sch2.department t1
     LEFT JOIN sch2.personal t2 ON t2.deptno = t1.deptno
  WHERE t2.deptno IS NULL;

ALTER TABLE sch2.part3_task2_2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part3_task2_2
    IS 'Найти все отделы, не имеющие служащих используя подзапрос. Вывести в результирующие столбцы: deptno, dname';

