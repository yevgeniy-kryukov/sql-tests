-- View: sch2.part1_task2

-- DROP VIEW sch2.part1_task2;

CREATE OR REPLACE VIEW sch2.part1_task2
 AS
 SELECT personal.ename,
        CASE
            WHEN personal.sal < 1500::numeric THEN 'Below 1500'::text
            WHEN personal.sal = 1500::numeric THEN 'On Target'::text
            ELSE NULL::text
        END AS sal
   FROM sch2.personal;

ALTER TABLE sch2.part1_task2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part1_task2
    IS 'Напечатайте список служащих, включающий их имя и оклад. Если оклад ниже $1500, то замените его на сообщение "Below 1500".
Значение $1500 замените на "On Target".';

