-- View: sch2.part2_task1

-- DROP VIEW sch2.part2_task1;

CREATE OR REPLACE VIEW sch2.part2_task1
 AS
 SELECT t1.ename,
    t1.job,
    t1.mgr,
    t1.sal,
    t1.pos
   FROM ( SELECT personal.ename,
            personal.job,
            personal.mgr,
            personal.sal,
            dense_rank() OVER (PARTITION BY personal.mgr ORDER BY personal.sal) AS pos
           FROM sch2.personal
          WHERE personal.mgr IS NOT NULL) t1
  WHERE t1.pos = 1 AND t1.sal >= 1000::numeric
  ORDER BY t1.sal;

ALTER TABLE sch2.part2_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part2_task1
    IS 'Выберите наименее оплачиваемых служащих, работающих на каждого из менеджеров. Исключите из таблицы результатов все группы,
в которых минимальная зарплата меньше $1000. Упорядочите результаты по значению поля "Минимальная зарплата" в порядке возрастания';

