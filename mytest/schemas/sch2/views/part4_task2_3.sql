-- View: sch2.part4_task2_3

-- DROP VIEW sch2.part4_task2_3;

CREATE OR REPLACE VIEW sch2.part4_task2_3
 AS
 SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.deptno
   FROM sch2.personal t1
     LEFT JOIN sch2.personal t2 ON t2.mgr = t1.empno
  WHERE t2.mgr IS NULL;

ALTER TABLE sch2.part4_task2_3
    OWNER TO postgres;
COMMENT ON VIEW sch2.part4_task2_3
    IS 'Получить список сотрудников, не имеющих подчиненных. Вывести в результирующие столбцы: empno, ename, job, deptno';

