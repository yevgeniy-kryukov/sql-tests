-- View: sch2.part5_task3_2

-- DROP VIEW sch2.part5_task3_2;

CREATE OR REPLACE VIEW sch2.part5_task3_2
 AS
 SELECT tx2.id,
    tx2.pay_type,
    tx2.pay_date,
    tx2.pay_sum,
    sum(tx2.pay_sum) OVER (PARTITION BY tx2.pay_type ORDER BY tx2.pay_date, tx2.id) AS sm
   FROM ( SELECT tx.id,
            tx.pay_type,
            tx.pay_date,
            tx.pay_sum,
            rank() OVER (ORDER BY tx.pay_sum_total DESC) AS pos
           FROM ( SELECT t5.id,
                    t5.pay_type,
                    t5.pay_date,
                    t5.pay_sum,
                    sum(t5.pay_sum) OVER (PARTITION BY t5.pay_type) AS pay_sum_total
                   FROM sch2.t5) tx) tx2
  WHERE tx2.pos = 1;

ALTER TABLE sch2.part5_task3_2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part5_task3_2
    IS 'Имеется таблица с данными по платежным документам. Необходимо написать запрос, который выведет
все документы того типа, которого за все время было по сумме больше всего. Если таких типов несколько, то вывести все такие типы.
Для каждой строки результата вывести промежуточную сумму платежей данного типа от самого раннего до текущего платежа включительно.';

