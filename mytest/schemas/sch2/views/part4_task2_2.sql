-- View: sch2.part4_task2_2

-- DROP VIEW sch2.part4_task2_2;

CREATE OR REPLACE VIEW sch2.part4_task2_2
 AS
 SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.deptno
   FROM sch2.personal t1
  WHERE NOT (EXISTS ( SELECT 1
           FROM sch2.personal
          WHERE personal.mgr = t1.empno));

ALTER TABLE sch2.part4_task2_2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part4_task2_2
    IS 'Получить список сотрудников, не имеющих подчиненных. Вывести в результирующие столбцы: empno, ename, job, deptno';

