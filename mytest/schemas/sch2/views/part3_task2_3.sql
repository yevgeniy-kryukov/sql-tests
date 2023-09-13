-- View: sch2.part3_task2_3

-- DROP VIEW sch2.part3_task2_3;

CREATE OR REPLACE VIEW sch2.part3_task2_3
 AS
 SELECT t2.deptno,
    t2.dname
   FROM ( SELECT department.deptno
           FROM sch2.department
        EXCEPT
         SELECT DISTINCT personal.deptno
           FROM sch2.personal) t1
     JOIN sch2.department t2 ON t2.deptno = t1.deptno;

ALTER TABLE sch2.part3_task2_3
    OWNER TO postgres;
COMMENT ON VIEW sch2.part3_task2_3
    IS 'Найти все отделы, не имеющие служащих используя подзапрос. Вывести в результирующие столбцы: deptno, dname';

