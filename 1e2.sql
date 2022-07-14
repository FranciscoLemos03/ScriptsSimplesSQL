create table livro
(           nr                                                                            number(4)	    primary key,
            titulo                                                                        varchar2(20) not null,
            autor                                                                        varchar2(20),
            preço                                                                        number(4)  );

create table leitor
(           cod                                                                           number(4)    	primary key,
            nome                                                                        varchar2(20) not null,
            cpost                                                                         number(4),
            cidade                                                                       varchar2(20)  );

create table req
(           liv                                                                             number(4)	    references livro,
            lei                                                                             number(4)    	references leitor,	
           datar                                                                          date,
           datae                                                                         date,
           constraint req_ck check (datar<=datae), 
           constraint req_pk primary key(liv, lei, datar)  ); 




INSERT INTO LIVRO(NR,titulo,autor,preço) values (100,'Os Maias ','Eça de Queiroz',1100);
INSERT INTO LIVRO(NR,titulo,autor,preço) values (110,'Os Lusíadas','Luís de Camões',490);
INSERT INTO LIVRO(NR,titulo,autor,preço) values (120,'A Selva','Ferreira de Castro',700);
INSERT INTO LIVRO(NR,titulo,autor,preço) values (130,'A Capital','Eça de Queiroz',1050);
INSERT INTO LIVRO(NR,titulo,autor,preço) values (140,'Terra Fria','Ferreira de Castro',1100);
INSERT INTO LIVRO(NR,titulo,autor,preço) values (150,'A Relíquia','Eça de Queiroz',900);

INSERT INTO LEITOR(cod,nome,cpost,cidade) values (1,'António',1000,'Lisboa');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (2,'Chico',4000,'Porto');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (3,'Marina',1100,'Lisboa');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (4,'Zeca',4100,'Porto');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (5,'Manuel',4400,'Gaia');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (6,'Mafalda',4470,'Matosinhos');
INSERT INTO LEITOR(cod,nome,cpost,cidade) values (7,'Rui',1200,'Lisboa');


INSERT INTO REQ(liv,lei,datar,datae) values (100,1,to_date('95-01-01','yy-mm-dd'),to_date('95-02-06','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (110,2,to_date('95-01-05','yy-mm-dd'),to_date('95-03-05','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (120,2,to_date('95-02-15','yy-mm-dd'),to_date('95-02-25','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (100,3,to_date('95-03-10','yy-mm-dd'),to_date('95-03-20','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (130,6,to_date('95-06-15','yy-mm-dd'),null);
INSERT INTO REQ(liv,lei,datar,datae) values (140,5,to_date('95-04-15','yy-mm-dd'),to_date('95-05-02','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (100,1,to_date('95-04-30','yy-mm-dd'),to_date('95-05-08','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (110,4,to_date('95-04-21','yy-mm-dd'),to_date('95-04-26','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (150,6,to_date('95-06-30','yy-mm-dd'),to_date('95-07-08','yy-mm-dd'));
INSERT INTO REQ(liv,lei,datar,datae) values (130,5,to_date('95-07-04','yy-mm-dd'),to_date('95-07-12','yy-mm-dd'));

Select cod, nome
from leitor
where cod < 5;

Select nome, cidade
from leitor
where cod between 2 and 5 and nome LIKE 'M%';