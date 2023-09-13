-- View: sch2.part2_task2

-- DROP VIEW sch2.part2_task2;

CREATE OR REPLACE VIEW sch2.part2_task2
 AS
 SELECT t1.ename,
    t1.job,
    t1.sal,
    t2.grade
   FROM sch2.personal t1
     JOIN sch2.grade t2 ON t1.sal >= t2.losal AND t1.sal <= t2.hisal;

ALTER TABLE sch2.part2_task2
    OWNER TO postgres;
COMMENT ON VIEW sch2.part2_task2
    IS 'Сформируйте таблицу, отображающую градацию служащих по уровню их зарплаты. 
Отобразить в результате имя сотрудника, его должность, зарплату и grade';

