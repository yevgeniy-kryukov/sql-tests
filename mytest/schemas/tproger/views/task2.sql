-- View: tproger.task2

-- DROP VIEW tproger.task2;

CREATE OR REPLACE VIEW tproger.task2
 AS
 WITH tx AS (
         SELECT to_char(ord.ord_datetime, 'yyyy-mm'::text) AS ord_mm,
            ana.an_id,
            grp.gr_name
           FROM tproger.orders ord,
            tproger.analysis ana,
            tproger.groups grp
          WHERE ord.ord_an_id = ana.an_id AND grp.gr_id = ana.an_group_id
        )
 SELECT t1.gr_name,
    t1.ord_mm,
    sum(t1.cnt) OVER (PARTITION BY t1.gr_name ORDER BY t1.ord_mm) AS cnt
   FROM ( SELECT tx.gr_name,
            tx.ord_mm,
            count(tx.an_id) AS cnt
           FROM tx
          GROUP BY tx.gr_name, tx.ord_mm) t1;

ALTER TABLE tproger.task2
    OWNER TO postgres;
COMMENT ON VIEW tproger.task2
    IS 'Задача 2. Уровень: Middle
Формулировка: нарастающим итогом рассчитать, как увеличивалось количество проданных тестов каждый месяц каждого года с разбивкой по группе.
Эта задача уже более высокого уровня: ее можно давать как Middle, так и Junior специалистам. Здесь проверяется базовое понимание оконных функций, джоинов и группировок.
Примечание После того, как вы написали первую версию своего запроса, попробуйте его оптимизировать. Например, в данном примере мы используем CTE — обобщенные табличные выражения.';

