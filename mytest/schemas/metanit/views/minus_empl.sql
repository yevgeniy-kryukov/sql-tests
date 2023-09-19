-- View: metanit.minus_empl

-- DROP VIEW metanit.minus_empl;

CREATE OR REPLACE VIEW metanit.minus_empl
 AS
 SELECT customers.firstname,
    customers.lastname
   FROM metanit.customers
EXCEPT
 SELECT employees.firstname,
    employees.lastname
   FROM metanit.employees
  ORDER BY 1, 2;

ALTER TABLE metanit.minus_empl
    OWNER TO postgres;
COMMENT ON VIEW metanit.minus_empl
    IS 'Разность множеств. Таблица Employees содержит данные обо всех сотрудниках банка, а таблица Customers - обо всех клиентах. 
Но сотрудники банка могут также быть его клиентами. 
Найти всех клиентов банка, которые не являются его сотрудниками';

