--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-09-19 21:02:23

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
-- TOC entry 3661 (class 0 OID 23904)
-- Dependencies: 328
-- Data for Name: api; Type: TABLE DATA; Schema: json_sch; Owner: postgres
--

INSERT INTO json_sch.api VALUES ('{"guid": "9c36adc1-7fb5-4d5b-83b4-90356a46061a", "name": "Angela Barton", "tags": ["enim", "aliquip", "qui"], "address": "178 Howard Place, Gulf, Washington, 702", "company": "Magnafone", "latitude": 19.793713, "is_active": true, "longitude": 86.513373, "registered": "2009-11-07T08:53:22 +08:00"}', 1);
INSERT INTO json_sch.api VALUES ('{"guid": "1c36adc1-5fb2-7d5b-33b4-70356a45061s", "name": "Valadimir Zverev", "tags": ["typ", "asdftyp", "zuv"], "address": "235 Green Place, Dudd, Boston, 80", "company": "Apple", "latitude": 11.793713, "is_active": false, "longitude": 34.513373, "registered": "2001-08-01T07:10:21 +08:00"}', 2);
INSERT INTO json_sch.api VALUES ('{"guid": "5c36adc3-7fb2-9d5b-22b4-80356a45061s", "name": "Andrey Bogomolov", "tags": ["wer", "asdf", "qaz"], "address": "11 Start place, Weme, Penselvania, 55", "company": "Raven", "latitude": 99.793713, "is_active": true, "longitude": 55.513373, "registered": "1999-01-01T07:10:21 +08:00"}', 3);


--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 327
-- Name: api_id_seq; Type: SEQUENCE SET; Schema: json_sch; Owner: postgres
--

SELECT pg_catalog.setval('json_sch.api_id_seq', 3, true);


-- Completed on 2023-09-19 21:02:23

--
-- PostgreSQL database dump complete
--

