-- FUNCTION: sch2.part5_task2()

-- DROP FUNCTION IF EXISTS sch2.part5_task2();

CREATE OR REPLACE FUNCTION sch2.part5_task2(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
    ALTER TABLE sch2.t4 SET (autovacuum_enabled = off);
    
    --v1
    delete 
    from sch2.t4 as tx1
    where tx1.ctid not in ( select min(ctid)
                            from sch2.t4 
                            group by id, a, b);
    --v2                          
--     delete 
--     from sch2.t4 as tx1
--     where ctid in (
--         select tx.ctid
--         from (
--             select ctid, row_number() over (partition by id, a, b order by ctid) as pos 
--             from sch2.t4 
--         ) tx
--         where tx.pos > 1
--     );    
    
    ALTER TABLE sch2.t4 SET (autovacuum_enabled = on);
end;
$BODY$;

ALTER FUNCTION sch2.part5_task2()
    OWNER TO postgres;

COMMENT ON FUNCTION sch2.part5_task2()
    IS 'Имеется таблица без первичного ключа. Известно, что в таблице имеется задвоение данных.
Необходимо удалить дубликаты из таблицы.';
