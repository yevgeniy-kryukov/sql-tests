-- FUNCTION: sch1.get_person_leaders(integer)

-- DROP FUNCTION IF EXISTS sch1.get_person_leaders(integer);

CREATE OR REPLACE FUNCTION sch1.get_person_leaders(
	p_id_pers integer)
    RETURNS TABLE(leader_level integer, leader_id integer, id integer, name character varying) 
    LANGUAGE 'sql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
     WITH RECURSIVE t(leader_level, leader_id, id, name) AS (
         SELECT 1 as leader_level, t2.leader_id, t2.id, t2.name
           FROM sch1.personal t1,
            sch1.personal t2
          WHERE t2.id = t1.leader_id AND t1.id = p_id_pers
        UNION ALL
         SELECT t_1.leader_level + 1 as leader_level, t2.leader_id, t2.id, t2.name
           FROM t t_1,
            sch1.personal t2
          WHERE t2.id = t_1.leader_id
        )
 SELECT t.leader_level, t.leader_id, t.id, t.name
   FROM t;
$BODY$;

ALTER FUNCTION sch1.get_person_leaders(integer)
    OWNER TO postgres;

COMMENT ON FUNCTION sch1.get_person_leaders(integer)
    IS 'Выбрать всех руководителей работника по его id';
