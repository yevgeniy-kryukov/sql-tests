-- FUNCTION: tproger.task3()

-- DROP FUNCTION IF EXISTS tproger.task3();

CREATE OR REPLACE FUNCTION tproger.task3(
	)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare 
    var_count integer; 
begin
    delete
    from tproger.client_balance t1
    where t1.ctid not in (
        select min(ctid)
        from tproger.client_balance
        group by client_id, 
                 client_name, 
                 client_balance_date, 
                 client_balance_value
    );
    get diagnostics var_count = ROW_COUNT;
    return var_count;
end;
$BODY$;

ALTER FUNCTION tproger.task3()
    OWNER TO postgres;

COMMENT ON FUNCTION tproger.task3()
    IS 'Задача 3: Уровень Senior
в таблице client_balance в какой-то момент времени появились полные дубли. Предложите способ для избавления от них без создания новой таблицы';
