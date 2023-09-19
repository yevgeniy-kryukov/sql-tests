-- View: metanit.intersect_empl_cust

-- DROP VIEW metanit.intersect_empl_cust;

CREATE OR REPLACE VIEW metanit.intersect_empl_cust
 AS
 SELECT employees.firstname,
    employees.lastname
   FROM metanit.employees
INTERSECT
 SELECT customers.firstname,
    customers.lastname
   FROM metanit.customers;

ALTER TABLE metanit.intersect_empl_cust
    OWNER TO postgres;
COMMENT ON VIEW metanit.intersect_empl_cust
    IS 'В таблице Customers хранятся все клиенты банка, а в таблице Employees - все его сотрудники. 
При этом сотрудники банка могут быть одновременно и клиентами этого банка, поэтому их данные могут храниться сразу в двух таблицах. 
Найдем всех сотрудников банка, которые одновременно являются его клиентами. 
То есть нам надо найти общие элементы двух выборок.';

