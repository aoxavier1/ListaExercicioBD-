SELECT * FROM exemplo1 WHERE c3 = 4801 AND c2 = 4899 AND c4 = 4750;

/* 0.016 sec */ 

create index idx_c2 on exemplo1(c2);
create index idx_c3 on exemplo1(c3);
create index idx_c4 on exemplo1(c4);

/* Index */

ANALYZE table exemplo1;


SELECT * FROM exemplo1 WHERE c3 = 4801 AND c2 = 4899 AND c4 = 4750;

/* 0.00 sec */

SELECT * FROM exemplo1 WHERE c1 = 5020;

/* 0.000 sec , 12 row retunerd */

SELECT * FROM exemplo1 WHERE c2 = 5020;

/*  0.00 sec , 11 row returned */ 



