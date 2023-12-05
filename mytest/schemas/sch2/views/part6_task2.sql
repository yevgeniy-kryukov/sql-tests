-- View: sch2.part6_task2

-- DROP VIEW sch2.part6_task2;

CREATE OR REPLACE VIEW sch2.part6_task2
 AS
 SELECT c.name
   FROM sch2.customers c
  WHERE (upper(c.city::text) = upper('Сант-Петербург'::text))  
    and (c.rating::numeric > (( SELECT avg(c_1.rating) AS avg
           FROM sch2.customers c_1
          WHERE upper(c_1.city::text) = upper('Сант-Петербург'::text)))) 
    and (c.id IN (SELECT o.customers_id
           FROM sch2.orders o
          WHERE o.orders_date >= (CURRENT_DATE - 31) AND o.orders_date <= CURRENT_DATE));

ALTER TABLE sch2.part6_task2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part6_task2
    IS 'Выбрать покупателей с рейтингом выше среднего по городу Сант-Петербургу,
 сделавших покупки за последние 31 дня';

