-- View: sch2.part1_task1

-- DROP VIEW sch2.part1_task1;

CREATE OR REPLACE VIEW sch2.part1_task1
 AS
 SELECT personal.ename,
    personal.sal,
    personal.comm
   FROM sch2.personal
  WHERE personal.job::text = 'salesman'::text AND personal.sal > COALESCE(personal.comm, 0::numeric)
  ORDER BY personal.sal DESC, personal.ename;

ALTER TABLE sch2.part1_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part1_task1
    IS 'Покажите имя, месячную зарплату и премию для всех продавцов (должность SALESMAN), у которых месячная зарплата (поле SAL)
превосходит премию (поле COMM). Отсортируйте строки по полю SAL в порядке убывания. Если несколько служащих получают одинаковую зарплату, то в пределах строк
с одинаковой зарплатой упорядочите их по именам сотрудников (поле ENAME)';

