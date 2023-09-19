--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-19 13:59:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3659 (class 0 OID 21561)
-- Dependencies: 293
-- Data for Name: employees; Type: TABLE DATA; Schema: metanit; Owner: postgres
--

INSERT INTO metanit.employees VALUES (5, 'homer', 'simpson');
INSERT INTO metanit.employees VALUES (6, 'tom', 'smith');
INSERT INTO metanit.employees VALUES (7, 'mark', 'adams');
INSERT INTO metanit.employees VALUES (8, 'nick', 'svensson');
INSERT INTO metanit.employees VALUES (9, 'test1', 'test1');
INSERT INTO metanit.employees VALUES (10, 'test2', 'test2');
INSERT INTO metanit.employees VALUES (11, 'proba2', 'proba2');
INSERT INTO metanit.employees VALUES (12, 'proba1', 'proba1');
INSERT INTO metanit.employees VALUES (13, 'erwtwerty', 'cxvbnljklk');
INSERT INTO metanit.employees VALUES (14, 'qwerqwer', 'ghjfghjfgh');
INSERT INTO metanit.employees VALUES (15, 'vbnmvbnm', 'tyuityuity');
INSERT INTO metanit.employees VALUES (16, 'qwerqwre', 'dfghdfgh');


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 292
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: metanit; Owner: postgres
--

SELECT pg_catalog.setval('metanit.employees_id_seq', 16, true);


-- Completed on 2023-09-19 13:59:32

--
-- PostgreSQL database dump complete
--

