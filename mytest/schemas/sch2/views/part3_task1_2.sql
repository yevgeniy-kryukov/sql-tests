-- View: sch2.part3_task1_2

-- DROP VIEW sch2.part3_task1_2;

CREATE OR REPLACE VIEW sch2.part3_task1_2
 AS
 SELECT t1.deptno,
    t1.ename,
    t1.hiredate
   FROM sch2.personal t1,
    ( SELECT personal.deptno,
            max(personal.hiredate) AS hiredate
           FROM sch2.personal
          GROUP BY personal.deptno) t2
  WHERE t1.deptno = t2.deptno AND t1.hiredate = t2.hiredate
  ORDER BY t1.hiredate DESC;

ALTER TABLE sch2.part3_task1_2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part3_task1_2
    IS 'Определите, кто из служащих в каждом из отделов был зачислен на работу последним по времени.
Результаты упорядочите по дате зачисления. Вывести в результирующие столбцы: deptno, ename, hiredate.';

