-- View: sch1.task4

-- DROP VIEW sch1.task4;

CREATE OR REPLACE VIEW sch1.task4
 AS
 SELECT row_number() OVER (ORDER BY personal.id) AS rn,
    personal.id,
    personal.name,
    personal.leader_id,
    personal.salary,
    personal.department_id
   FROM sch1.personal;

ALTER TABLE sch1.task4
    OWNER TO postgres;
COMMENT ON VIEW sch1.task4
    IS 'Пронумеруйте строки в таблице employee';

