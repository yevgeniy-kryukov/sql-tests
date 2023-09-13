--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-13 19:54:17

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
-- TOC entry 3647 (class 0 OID 16516)
-- Dependencies: 245
-- Data for Name: department; Type: TABLE DATA; Schema: sch2; Owner: postgres
--

INSERT INTO sch2.department VALUES (10, 'accounting', 'new york');
INSERT INTO sch2.department VALUES (20, 'research', 'dallas');
INSERT INTO sch2.department VALUES (30, 'sales', 'chicago');
INSERT INTO sch2.department VALUES (40, 'operations', 'boston');


-- Completed on 2023-09-13 19:54:18

--
-- PostgreSQL database dump complete
--

