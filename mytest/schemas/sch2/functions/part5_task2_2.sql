-- FUNCTION: sch2.part5_task2_2()

-- DROP FUNCTION IF EXISTS sch2.part5_task2_2();

CREATE OR REPLACE FUNCTION sch2.part5_task2_2(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
    --v1
    delete 
    from sch2.t4 as t1
    where t1.id not in (select max(id) 
                        from sch2.t4
                        group by a, b);
    --v2
--     delete 
--     from sch2.t4 as t4_1
--     where t4_1.id in (
--         select id
--         from (
--             select *, row_number() over(partition by a, b order by id desc) as ix 
--             from sch2.t4
--         ) t4_2
--         where t4_2.ix > 1 
--     );
end;
$BODY$;

ALTER FUNCTION sch2.part5_task2_2()
    OWNER TO postgres;

COMMENT ON FUNCTION sch2.part5_task2_2()
    IS 'Имеется таблица с первичным ключом. Известно, что в таблице имеется задвоение данных.
Необходимо удалить дубликаты из таблицы.';
