truncate table s1.t1;
insert into s1.t1 (id, p1, p2, p3, p4, p5)
select id, p1, p2, p3, p4, p5
from s1.gen_data_for_table_t1;

update s1.t1 as t1_1
set p1 = t1_2.p1,
    p2 = t1_2.p2,
    p3 = t1_2.p3,
    p4 = t1_2.p4,
    p5 = t1_2.p5
from s1.t1 as t1_2
where t1_2.id = 6 and t1_1.id = 5;

alter table s1.t1 add constraint t1_pk primary key (id);

insert into s1.t1 select * from s1.t1 where id = 1 or id = 5;