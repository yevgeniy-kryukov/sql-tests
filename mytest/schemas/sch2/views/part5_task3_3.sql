-- View: sch2.part5_task3_3

-- DROP VIEW sch2.part5_task3_3;

CREATE OR REPLACE VIEW sch2.part5_task3_3
 AS
 WITH t1 AS (
         SELECT t5_1.pay_type,
            sum(t5_1.pay_sum) AS total_sum_by_type
           FROM sch2.t5 t5_1
          GROUP BY t5_1.pay_type
        ), t2 AS (
         SELECT t1.pay_type
           FROM t1
          WHERE t1.total_sum_by_type = (( SELECT max(t1_1.total_sum_by_type) AS max
                   FROM t1 t1_1))
        )
 SELECT t5.id,
    t5.pay_type,
    t5.pay_date,
    t5.pay_sum,
    sum(t5.pay_sum) OVER (PARTITION BY t5.pay_type ORDER BY t5.pay_date, t5.id) AS summ
   FROM sch2.t5,
    t2
  WHERE t2.pay_type = t5.pay_type;

ALTER TABLE sch2.part5_task3_3
    OWNER TO postgres;
COMMENT ON VIEW sch2.part5_task3_3
    IS 'Имеется таблица с данными по платежным документам. Необходимо написать запрос, который выведет
все документы того типа, которого за все время было по сумме больше всего. Если таких типов несколько, то вывести все такие типы.
Для каждой строки результата вывести промежуточную сумму платежей данного типа от самого раннего до текущего платежа включительно.';

