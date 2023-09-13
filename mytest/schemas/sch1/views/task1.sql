-- View: sch1.task1

-- DROP VIEW sch1.task1;

CREATE OR REPLACE VIEW sch1.task1
 AS
 SELECT w.id,
    w.name,
    w.leader_id,
    w.salary,
    w.department_id
   FROM sch1.personal w,
    sch1.personal l
  WHERE w.leader_id = l.id AND w.salary > l.salary;

ALTER TABLE sch1.task1
    OWNER TO postgres;
COMMENT ON VIEW sch1.task1
    IS 'Необходимо вывести сотрудников, получающих зп большую, чем у непосредственного руководителя';

