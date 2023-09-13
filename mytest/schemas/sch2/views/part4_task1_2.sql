-- View: sch2.part4_task1_2

-- DROP VIEW sch2.part4_task1_2;

CREATE OR REPLACE VIEW sch2.part4_task1_2
 AS
 WITH tx AS (
         SELECT personal.deptno,
            avg(personal.sal) AS avg_sal,
            count(personal.deptno) AS cnt_per
           FROM sch2.personal
          GROUP BY personal.deptno
        )
 SELECT tx.deptno,
    round(tx.avg_sal, 2) AS avg_sal,
    tx.cnt_per
   FROM tx
  WHERE tx.cnt_per > 3 AND tx.avg_sal > (( SELECT tx_1.avg_sal
           FROM tx tx_1
          WHERE tx_1.deptno = 30));

ALTER TABLE sch2.part4_task1_2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part4_task1_2
    IS 'Выбрать те отделы, где число сотрудников больше трех и средняя зарплата больше средней зарплаты отдела 30.
Вывести в результирующие столбцы: номер отдела, средняя зарплата';

