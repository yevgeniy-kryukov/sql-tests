create or replace procedure s1.fill_table_t1(in p_rows_count integer) 
language plpgsql
as
$body$
declare 
    v_counter_commit integer := 0;
begin
    for i in 1..p_rows_count 
    loop
        call  s1.save_row_t1(nextval('s1.t1_id_seq')::integer,
                            md5(random()::text),
                            md5(random()::text),
                            md5(random()::text),
                            md5(random()::text),
                            md5(random()::text),
                            CURRENT_DATE + ((round(random() * 100::double precision) || ' days'::text)::interval));
                            
         v_counter_commit := v_counter_commit + 1;
         
         if v_counter_commit > 999 then
            v_counter_commit := 0;
            commit;
         end if;
    end loop;
    
    if v_counter_commit > 0 then
        commit;
    end if;
end;
$body$