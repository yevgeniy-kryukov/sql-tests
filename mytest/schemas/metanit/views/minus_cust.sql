-- View: metanit.minus_cust

-- DROP VIEW metanit.minus_cust;

CREATE OR REPLACE VIEW metanit.minus_cust
 AS
 SELECT employees.firstname,
    employees.lastname
   FROM metanit.employees
EXCEPT
 SELECT customers.firstname,
    customers.lastname
   FROM metanit.customers;

ALTER TABLE metanit.minus_cust
    OWNER TO postgres;
COMMENT ON VIEW metanit.minus_cust
    IS 'Разность множеств. Таблица Employees содержит данные обо всех сотрудниках банка, а таблица Customers - обо всех клиентах. 
Но сотрудники банка могут также быть его клиентами.
Получить всех сотрудников банка, которые не являются его клиентами';

