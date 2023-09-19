-- FUNCTION: tproger.task3_v2()

-- DROP FUNCTION IF EXISTS tproger.task3_v2();

CREATE OR REPLACE FUNCTION tproger.task3_v2(
	)
    RETURNS integer
    LANGUAGE 'sql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
    with t1 as (
        delete
        from tproger.client_balance t1
        where t1.ctid in (
            select tx.ctid
            from (
                select ctid, row_number() over (partition by client_id, 
                                                         client_name, 
                                                         client_balance_date, 
                                                         client_balance_value) as rn
                from tproger.client_balance
            ) tx
            where tx.rn > 1
        )
        returning ctid
    )
    select count(ctid)
    from t1;
$BODY$;

ALTER FUNCTION tproger.task3_v2()
    OWNER TO postgres;

COMMENT ON FUNCTION tproger.task3_v2()
    IS 'Задача 3: Уровень Senior
в таблице client_balance в какой-то момент времени появились полные дубли. Предложите способ для избавления от них без создания новой таблицы';
