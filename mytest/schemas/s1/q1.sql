delete from s1.t1 
where id not in (
    select min(id)
    from s1.t1 
    group by p1, p2, p3, p4, p5
) returning id;

delete from s1.t1
where id in (
    select id
    from (
        select id, row_number() over (partition by p1, p2, p3, p4, p5 order by id desc) as pos
        from s1.t1
    ) tx
    where tx.pos > 1
);

delete from s1.t1
where ctid not in (
    select max(ctid)
    from s1.t1
    group by id, p1, p2, p3, p4, p5
);

delete from s1.t1
where ctid in (
    select ctid
    from (
        select ctid, row_number() over (partition by id, p1, p2, p3, p4, p5 order by ctid asc) as pos
        from s1.t1
    ) tx
    where tx.pos > 1
);