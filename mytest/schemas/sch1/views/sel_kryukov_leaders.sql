-- View: sch1.sel_kryukov_leaders

-- DROP VIEW sch1.sel_kryukov_leaders;

CREATE OR REPLACE VIEW sch1.sel_kryukov_leaders
 AS
 SELECT get_person_leaders.leader_level,
    get_person_leaders.leader_id,
    get_person_leaders.id,
    get_person_leaders.name
   FROM sch1.get_person_leaders(5) get_person_leaders(leader_level, leader_id, id, name);

ALTER TABLE sch1.sel_kryukov_leaders
    OWNER TO postgres;

