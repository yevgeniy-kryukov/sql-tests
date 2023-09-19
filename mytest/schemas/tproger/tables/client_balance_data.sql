--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-19 15:12:53

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
-- TOC entry 3655 (class 0 OID 21389)
-- Dependencies: 287
-- Data for Name: client_balance; Type: TABLE DATA; Schema: tproger; Owner: postgres
--

INSERT INTO tproger.client_balance VALUES (1, 'test1', '2022-04-10 00:00:00', 5);
INSERT INTO tproger.client_balance VALUES (3, 'test2', '2022-04-09 00:00:00', 2.5);
INSERT INTO tproger.client_balance VALUES (2, 'test2', '2022-04-09 00:00:00', 2.5);
INSERT INTO tproger.client_balance VALUES (3, 'test3', '2022-04-09 00:00:00', 7.5);


-- Completed on 2023-09-19 15:12:53

--
-- PostgreSQL database dump complete
--

