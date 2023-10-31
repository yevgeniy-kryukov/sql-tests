-- PROCEDURE: s1.test_proc2()

-- DROP PROCEDURE IF EXISTS s1.test_proc2();

CREATE OR REPLACE PROCEDURE s1.test_proc2(
	)
LANGUAGE 'plpgsql'
AS $BODY$
    begin
        call s1.test_proc1();
        insert into s1.t3 (id, p1, p2, p3, p4, p5) values (1, 1, 2, 3, 4, 5);
        rollback;
    end;
$BODY$;
ALTER PROCEDURE s1.test_proc2()
    OWNER TO postgres;
