-- PROCEDURE: s1.test_proc1()

-- DROP PROCEDURE IF EXISTS s1.test_proc1();

CREATE OR REPLACE PROCEDURE s1.test_proc1(
	)
LANGUAGE 'plpgsql'
AS $BODY$
    begin
        insert into s1.t2 (id, p1, p2, p3, p4, p5) values (1, 1, 2, 3, 4, 5);
        insert into s1.t2 (id, p1, p2, p3, p4, p5) values (2, 1, 2, 3, 4, 5);
        commit;
    end;
$BODY$;
ALTER PROCEDURE s1.test_proc1()
    OWNER TO postgres;
