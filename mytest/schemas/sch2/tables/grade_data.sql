--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-13 19:54:54

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
-- TOC entry 3647 (class 0 OID 16495)
-- Dependencies: 241
-- Data for Name: grade; Type: TABLE DATA; Schema: sch2; Owner: postgres
--

INSERT INTO sch2.grade VALUES (1, 700, 1200);
INSERT INTO sch2.grade VALUES (2, 1201, 1400);
INSERT INTO sch2.grade VALUES (3, 1401, 2000);
INSERT INTO sch2.grade VALUES (4, 2001, 3000);
INSERT INTO sch2.grade VALUES (5, 3001, 9999);


-- Completed on 2023-09-13 19:54:55

--
-- PostgreSQL database dump complete
--

