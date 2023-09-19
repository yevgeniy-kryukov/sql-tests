--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-19 13:42:39

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
-- TOC entry 3660 (class 0 OID 21551)
-- Dependencies: 291
-- Data for Name: customers; Type: TABLE DATA; Schema: metanit; Owner: postgres
--

INSERT INTO metanit.customers VALUES (7, 'tom', 'smith', 2000);
INSERT INTO metanit.customers VALUES (8, 'sam', 'brown', 3000);
INSERT INTO metanit.customers VALUES (9, 'paul', 'ins', 4200);
INSERT INTO metanit.customers VALUES (10, 'victor', 'baya', 2800);
INSERT INTO metanit.customers VALUES (11, 'mark', 'adams', 2500);
INSERT INTO metanit.customers VALUES (12, 'tim', 'cook', 2800);


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 290
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: metanit; Owner: postgres
--

SELECT pg_catalog.setval('metanit.customers_id_seq', 12, true);


-- Completed on 2023-09-19 13:42:39

--
-- PostgreSQL database dump complete
--

