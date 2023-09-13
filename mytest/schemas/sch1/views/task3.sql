-- View: sch1.task3

-- DROP VIEW sch1.task3;

CREATE OR REPLACE VIEW sch1.task3
 AS
 SELECT max(t1.salary) AS salary
   FROM sch1.personal t1
  WHERE t1.salary <> (( SELECT max(personal.salary) AS max
           FROM sch1.personal));

ALTER TABLE sch1.task3
    OWNER TO postgres;
COMMENT ON VIEW sch1.task3
    IS 'Выберите самое большое значение зп, не равное максимальной зп, полученной по всей таблице';

