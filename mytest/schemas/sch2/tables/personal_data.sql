--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-13 19:56:39

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
-- TOC entry 3647 (class 0 OID 16474)
-- Dependencies: 237
-- Data for Name: personal; Type: TABLE DATA; Schema: sch2; Owner: postgres
--

INSERT INTO sch2.personal VALUES (7839, 'king', 'president', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO sch2.personal VALUES (7698, 'blake', 'manager', 7839, '1981-05-01', 2850, NULL, 30);
INSERT INTO sch2.personal VALUES (7782, 'clark', 'manager', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO sch2.personal VALUES (7566, 'jones', 'manager', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO sch2.personal VALUES (7654, 'martin', 'salesman', 7698, '1981-08-28', 1250, 1400, 30);
INSERT INTO sch2.personal VALUES (7844, 'turner', 'salesman', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO sch2.personal VALUES (7900, 'james', 'clerk', 7698, '1981-12-03', 950, NULL, 30);
INSERT INTO sch2.personal VALUES (7521, 'wrd', 'salesman', 7698, '1981-02-22', 1250, 500, 30);
INSERT INTO sch2.personal VALUES (7902, 'ford', 'analyst', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO sch2.personal VALUES (736, 'smith', 'clerk', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO sch2.personal VALUES (7788, 'scott', 'analyst', 7566, '1982-12-09', 3000, NULL, 20);
INSERT INTO sch2.personal VALUES (7876, 'adams', 'clerk', 7788, '1983-12-12', 1100, NULL, 20);
INSERT INTO sch2.personal VALUES (7934, 'miler', 'clerk', 7782, '1982-12-23', 1300, NULL, 10);
INSERT INTO sch2.personal VALUES (7499, 'allen', 'salesman', 7698, '1981-02-20', 1600, 300, 30);


-- Completed on 2023-09-13 19:56:40

--
-- PostgreSQL database dump complete
--

