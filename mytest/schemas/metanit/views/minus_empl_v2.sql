-- View: metanit.minus_empl_v2

-- DROP VIEW metanit.minus_empl_v2;

CREATE OR REPLACE VIEW metanit.minus_empl_v2
 AS
 SELECT t1.firstname,
    t1.lastname
   FROM metanit.customers t1
  WHERE NOT (EXISTS ( SELECT 1
           FROM metanit.employees
          WHERE employees.firstname::text = t1.firstname::text AND employees.lastname::text = t1.lastname::text))
  ORDER BY t1.firstname, t1.lastname;

ALTER TABLE metanit.minus_empl_v2
    OWNER TO postgres;
COMMENT ON VIEW metanit.minus_empl_v2
    IS 'Разность множеств. Таблица Employees содержит данные обо всех сотрудниках банка, а таблица Customers - обо всех клиентах. 
Но сотрудники банка могут также быть его клиентами. 
Найти всех клиентов банка, которые не являются его сотрудниками';

