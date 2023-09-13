-- FUNCTION: s1.test1()

-- DROP FUNCTION IF EXISTS s1.test1();

CREATE OR REPLACE FUNCTION s1.test1(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
    res boolean;
begin
    res = pg_try_advisory_lock(100,200);
    if not res then
        raise notice 'res now locked';
        return;
    end if;
    perform pg_sleep(15);
    perform pg_advisory_unlock(100,200);
end;
$BODY$;

ALTER FUNCTION s1.test1()
    OWNER TO postgres;
