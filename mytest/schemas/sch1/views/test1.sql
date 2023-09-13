-- View: sch1.test1

-- DROP VIEW sch1.test1;

CREATE OR REPLACE VIEW sch1.test1
 AS
 SELECT dep.name AS depname,
    per.name,
    per.salary,
    round(avg(per.salary) OVER (PARTITION BY per.department_id), 2) AS dep_avg_salary
   FROM sch1.personal per,
    sch1.department dep
  WHERE per.department_id = dep.id;

ALTER TABLE sch1.test1
    OWNER TO postgres;
COMMENT ON VIEW sch1.test1
    IS 'Выведите среднюю зп по департаменту для каждого сотрудника';

