-- View: sch2.part4_task2

-- DROP VIEW sch2.part4_task2;

CREATE OR REPLACE VIEW sch2.part4_task2
 AS
 SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.deptno
   FROM sch2.personal t1
  WHERE NOT (t1.empno IN ( SELECT COALESCE(personal.mgr, '-1'::integer) AS "coalesce"
           FROM sch2.personal));

ALTER TABLE sch2.part4_task2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part4_task2
    IS 'Получить список сотрудников, не имеющих подчиненных. Вывести в результирующие столбцы: empno, ename, job, deptno';

