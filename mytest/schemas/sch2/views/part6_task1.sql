-- View: sch2.part6_task1

-- DROP VIEW sch2.part6_task1;

CREATE OR REPLACE VIEW sch2.part6_task1
 AS
 SELECT ord.id,
    ord.orders_count,
    ord.orders_date,
    ord.customers_id,
    ord.salespeople_id
   FROM sch2.orders ord
     JOIN sch2.salespeople sal ON sal.id = ord.salespeople_id
     JOIN sch2.customers cus ON cus.id = ord.customers_id
  WHERE lower(sal.name::text) = 'петров'::text AND lower(cus.city::text) = 'москва'::text;

ALTER TABLE sch2.part6_task1
    OWNER TO postgres;
COMMENT ON VIEW sch2.part6_task1
    IS 'Написать запрос на SQL, выводящий все заказы, оформленные продавцом Петровым
на клиентов из города Москвы';

