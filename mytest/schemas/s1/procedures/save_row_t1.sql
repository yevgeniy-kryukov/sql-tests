-- PROCEDURE: s1.save_data_t1(s1.gen_data_for_table_t1)

DROP PROCEDURE IF EXISTS s1.save_row_t1(
	IN p_id integer, 
    IN p_p1 character varying,
    IN p_p2 character varying,
    IN p_p3 character varying,
    IN p_p4 character varying,
    IN p_p5 character varying,
    IN p_dt timestamp without time zone);

CREATE OR REPLACE PROCEDURE s1.save_row_t1(
	IN p_id integer, 
    IN p_p1 character varying,
    IN p_p2 character varying,
    IN p_p3 character varying,
    IN p_p4 character varying,
    IN p_p5 character varying,
    IN p_dt timestamp without time zone)
LANGUAGE 'plpgsql'
AS $BODY$
declare
begin
    for i in 1..2 loop
        begin
            insert into s1.t1 (id, p1, p2, p3, p4, p5, dt) 
            values (p_id, p_p1, p_p2, p_p3, p_p4, p_p5, p_dt);
            exit;
        exception when sqlstate '23514' then
            execute 'create table s1.t1_' || to_char(p_dt, 'yyyymm') || ' partition of s1.t1 for values '||
                    'from (''' || date_trunc('month', p_dt) || ''') to (''' || date_trunc('month', p_dt) + '1 month'::interval || ''')';
        end;
    end loop;
end;
$BODY$;
ALTER PROCEDURE s1.save_row_t1(
    IN p_id integer, 
    IN p_p1 character varying,
    IN p_p2 character varying,
    IN p_p3 character varying,
    IN p_p4 character varying,
    IN p_p5 character varying,
    IN p_dt timestamp without time zone) 
OWNER TO postgres;
