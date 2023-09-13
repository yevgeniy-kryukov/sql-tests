-- View: sch1.task5

-- DROP VIEW sch1.task5;

CREATE OR REPLACE VIEW sch1.task5
 AS
 SELECT row_number() OVER (PARTITION BY personal.department_id ORDER BY personal.salary) AS rn,
    personal.id,
    personal.name,
    personal.leader_id,
    personal.salary,
    personal.department_id
   FROM sch1.personal;

ALTER TABLE sch1.task5
    OWNER TO postgres;
COMMENT ON VIEW sch1.task5
    IS 'Пронумеруйте строки в таблице в разрезе департамента по зп';

