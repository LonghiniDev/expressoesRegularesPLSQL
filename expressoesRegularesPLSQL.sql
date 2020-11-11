SELECT NM_FUNC FROM FUNC;

SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'^FL[aá]','i');

SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'^.....$','i');
SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'^.{5}$','i');

SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'^[0-5]$','i');

-- SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'^joao$','i') OR REGEXP_LIKE (NM_FUNC,'^maria','i');

SELECT NM_FUNC FROM FUNC WHERE REGEXP_LIKE (NM_FUNC,'(joao|maria)','i');

CREATE TABLE TOYS(
id number,
descr varchar2(20)
);

insert into toys values (1,'TOY1');
insert into toys values (2,'TOY2');
insert into toys values (3,'TOY3');

insert into toys values (4,'TOY4');
insert into toys values (5,'TOY5');
insert into toys values (6,'999');
insert into toys values (7,'888');

insert into toys values (8,'TOY2008');
insert into toys values (9,'1TOY1');
insert into toys values (10,'T1T');
COMMIT;

SELECT DESCR FROM TOYS WHERE REGEXP_LIKE (DESCR,'[^[:digit:]]');
SELECT DESCR FROM TOYS;

SELECT REGEXP_COUNT ('Ricardo Rezende', 'R', 1, 'c') FROM DUAL;

SELECT REGEXP_COUNT ('Ricardo Righetti', 'i', 2, 'c') FROM DUAL; 

SELECT REGEXP_REPLACE ('Rodrigo     Righetti','(){5}','') FROM DUAL;  

SELECT REGEXP_REPLACE ('123-456-123','(-)','') FROM DUAL;

SELECT REGEXP_REPLACE (DESCR,'[^[:digit:]]')FROM TOYS;

