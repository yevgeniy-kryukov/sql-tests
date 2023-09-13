-- View: sch1.task2

-- DROP VIEW sch1.task2;

CREATE OR REPLACE VIEW sch1.task2
 AS
 WITH sum_salary AS (
         SELECT personal.department_id,
            sum(personal.salary) AS salary
           FROM sch1.personal
          GROUP BY personal.department_id
        )
 SELECT t1.department_id
   FROM sum_salary t1
  WHERE t1.salary = (( SELECT max(t2.salary) AS max
           FROM sum_salary t2));

ALTER TABLE sch1.task2
    OWNER TO postgres;
COMMENT ON VIEW sch1.task2
    IS 'Найти список ID отделов с максимальной суммарной зп сотрудников';

