-- View: tproger.task1

-- DROP VIEW tproger.task1;

CREATE OR REPLACE VIEW tproger.task1
 AS
 SELECT ana.an_name,
    ana.an_price
   FROM tproger.orders ord
     JOIN tproger.analysis ana ON ana.an_id = ord.ord_an_id
  WHERE ord.ord_datetime >= to_date('2020-02-05'::text, 'yyy-mm-dd'::text) 
  AND ord.ord_datetime <= (to_date('2020-02-05'::text, 'yyy-mm-dd'::text) + '7 days'::interval);

ALTER TABLE tproger.task1
    OWNER TO postgres;
COMMENT ON VIEW tproger.task1
    IS 'Задача 1. Уровень: Junior
Формулировка: вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.';

