--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-13 19:59:41

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
-- TOC entry 3648 (class 0 OID 16559)
-- Dependencies: 256
-- Data for Name: t4; Type: TABLE DATA; Schema: sch2; Owner: postgres
--

INSERT INTO sch2.t4 VALUES (1, 1, 7);
INSERT INTO sch2.t4 VALUES (1, 3, 8);
INSERT INTO sch2.t4 VALUES (2, 2, 10);
INSERT INTO sch2.t4 VALUES (3, 3, 11);
INSERT INTO sch2.t4 VALUES (2, 3, 13);
INSERT INTO sch2.t4 VALUES (3, 1, 17);


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 331
-- Name: t4_id_seq; Type: SEQUENCE SET; Schema: sch2; Owner: postgres
--

SELECT pg_catalog.setval('sch2.t4_id_seq', 17, true);


-- Completed on 2023-09-13 19:59:41

--
-- PostgreSQL database dump complete
--

