-- View: sch2.part3_task1

-- DROP VIEW sch2.part3_task1;

CREATE OR REPLACE VIEW sch2.part3_task1
 AS
 SELECT t1.deptno,
    t1.ename,
    t1.hiredate
   FROM ( SELECT t1_1.deptno,
            t1_1.ename,
            t1_1.hiredate,
            rank() OVER (PARTITION BY t1_1.deptno ORDER BY t1_1.hiredate DESC) AS pos
           FROM sch2.personal t1_1) t1
  WHERE t1.pos = 1
  ORDER BY t1.hiredate DESC;

ALTER TABLE sch2.part3_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part3_task1
    IS 'Определите, кто из служащих в каждом из отделов был зачислен на работу последним по времени.
Результаты упорядочите по дате зачисления. Вывести в результирующие столбцы: deptno, ename, hiredate.';

