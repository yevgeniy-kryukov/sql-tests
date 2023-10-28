-- View: sanzhar.v1

-- DROP VIEW sanzhar.v1;

CREATE OR REPLACE VIEW sanzhar.v1
 AS
 SELECT COALESCE(t1.a, t2.a) AS a,
    t1.b,
    t2.c
   FROM ( SELECT 'a1'::text AS a,
            'b1'::text AS b
        UNION ALL
         SELECT 'a2'::text AS a,
            'b2'::text AS b) t1
     FULL JOIN ( SELECT 'a1'::text AS a,
            'c1'::text AS c
        UNION ALL
         SELECT 'a3'::text AS a,
            'c2'::text AS c) t2 ON t1.a = t2.a;

ALTER TABLE sanzhar.v1
    OWNER TO postgres;
COMMENT ON VIEW sanzhar.v1
    IS '
t1(a,b) = {(a1,b1), (a2,b2)}
t2(a,c) = {(a1, c1), (a3,c2)}
получить из 2-х выше таблиц следующий результат
result(a,b,c) = {(a1,b1,c1),(a2,b2,null),(a3,null, c2)}
';

