--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-11 19:23:52

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
-- TOC entry 3650 (class 0 OID 21139)
-- Dependencies: 279
-- Data for Name: user; Type: TABLE DATA; Schema: s1; Owner: postgres
--

INSERT INTO s1."user" VALUES (4, 'test@mmm.com', 'test', 'test');
INSERT INTO s1."user" VALUES (5, 'test2@mmm.com', 'test2', 'test2');
INSERT INTO s1."user" VALUES (1, 'yevgeniy.kryukov.1984@gmail.com', 'yevgeniy', 'kryukov');


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 278
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: s1; Owner: postgres
--

SELECT pg_catalog.setval('s1.user_id_seq', 5, true);


-- Completed on 2023-09-11 19:23:52

--
-- PostgreSQL database dump complete
--

