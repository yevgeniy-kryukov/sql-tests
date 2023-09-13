-- View: sch2.part4_task1

-- DROP VIEW sch2.part4_task1;

CREATE OR REPLACE VIEW sch2.part4_task1
 AS
 SELECT personal.deptno,
    round(avg(personal.sal), 2) AS sal
   FROM sch2.personal
  GROUP BY personal.deptno
 HAVING count(personal.deptno) > 3 AND avg(personal.sal) > (( SELECT avg(personal_1.sal) AS avg
           FROM sch2.personal personal_1
          WHERE personal_1.deptno = 30));

ALTER TABLE sch2.part4_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part4_task1
    IS 'Выбрать те отделы, где число сотрудников больше трех и средняя зарплата больше средней зарплаты отдела 30.
Вывести в результирующие столбцы: номер отдела, средняя зарплата';

