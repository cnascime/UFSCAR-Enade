/* 
Este arquivo SQL define as tabelas e as tuplas que fazem a tradução dos valores presentes no dataset original
para os valores destino do datawarehouse.
*/

/* DEFININDO DE-PARAS */
CREATE TABLE DePara_Sexo (
  tp_sexo VARCHAR(1),
  sexo VARCHAR(200)
);

insert into DePara_Sexo (tp_sexo, sexo) values ('F','Feminino');
insert into DePara_Sexo (tp_sexo, sexo) values ('M','Masculino');
insert into DePara_Sexo (tp_sexo, sexo) values ('N','Não Declarado');

CREATE TABLE DePara_Etnia (
  co_rs_s2 VARCHAR(1),
  etnia VARCHAR(200)
);

insert into DePara_Etnia (co_rs_s2, etnia) values ('.','Não Declarado');
insert into DePara_Etnia (co_rs_s2, etnia) values ('C','Pardo(a)');
insert into DePara_Etnia (co_rs_s2, etnia) values ('A','Branco(a)');
insert into DePara_Etnia (co_rs_s2, etnia) values ('D','Amarelo(a)');
insert into DePara_Etnia (co_rs_s2, etnia) values ('E','Indígena');
insert into DePara_Etnia (co_rs_s2, etnia) values ('B','Negro(a)');

CREATE TABLE DePara_Renda (
  co_rs_s5 VARCHAR(1),
  faixa_renda VARCHAR(200)
);

insert into DePara_Renda (co_rs_s5, faixa_renda) values ('B','Entre 3 e 10 salários mínimos');
insert into DePara_Renda (co_rs_s5, faixa_renda) values ('C','Entre 10 e 30 salários mínimos');
insert into DePara_Renda (co_rs_s5, faixa_renda) values ('A','Até 3 salários mínimos');
insert into DePara_Renda (co_rs_s5, faixa_renda) values ('E','Não Declarado');
insert into DePara_Renda (co_rs_s5, faixa_renda) values ('D','Acima de 30 salários mínimos');

CREATE TABLE DePara_Curso (
  co_grupo integer,
  idCurso integer
);

insert into DePara_Curso (co_grupo, idCurso) values ('1', '1');
insert into DePara_Curso (co_grupo, idCurso) values ('17', '2');
insert into DePara_Curso (co_grupo, idCurso) values ('21', '3');
insert into DePara_Curso (co_grupo, idCurso) values ('65', '4');
insert into DePara_Curso (co_grupo, idCurso) values ('66', '5');
insert into DePara_Curso (co_grupo, idCurso) values ('16', '6');
insert into DePara_Curso (co_grupo, idCurso) values ('55', '7');
insert into DePara_Curso (co_grupo, idCurso) values ('22', '8');
insert into DePara_Curso (co_grupo, idCurso) values ('13', '9');
insert into DePara_Curso (co_grupo, idCurso) values ('54', '10');
insert into DePara_Curso (co_grupo, idCurso) values ('40', '11');
insert into DePara_Curso (co_grupo, idCurso) values ('8', '12');
insert into DePara_Curso (co_grupo, idCurso) values ('26', '13');
insert into DePara_Curso (co_grupo, idCurso) values ('2', '14');
insert into DePara_Curso (co_grupo, idCurso) values ('35', '15');
insert into DePara_Curso (co_grupo, idCurso) values ('3501', '15');
insert into DePara_Curso (co_grupo, idCurso) values ('23', '16');
insert into DePara_Curso (co_grupo, idCurso) values ('64', '17');
insert into DePara_Curso (co_grupo, idCurso) values ('63', '18');
insert into DePara_Curso (co_grupo, idCurso) values ('57', '19');
insert into DePara_Curso (co_grupo, idCurso) values ('58', '20');
insert into DePara_Curso (co_grupo, idCurso) values ('61', '21');
insert into DePara_Curso (co_grupo, idCurso) values ('62', '22');
insert into DePara_Curso (co_grupo, idCurso) values ('59', '23');
insert into DePara_Curso (co_grupo, idCurso) values ('60', '24');
insert into DePara_Curso (co_grupo, idCurso) values ('82', '25');
insert into DePara_Curso (co_grupo, idCurso) values ('19', '26');
insert into DePara_Curso (co_grupo, idCurso) values ('32', '27');
insert into DePara_Curso (co_grupo, idCurso) values ('14', '28');
insert into DePara_Curso (co_grupo, idCurso) values ('36', '29');
insert into DePara_Curso (co_grupo, idCurso) values ('27', '30');
insert into DePara_Curso (co_grupo, idCurso) values ('30', '31');
insert into DePara_Curso (co_grupo, idCurso) values ('24', '32');
insert into DePara_Curso (co_grupo, idCurso) values ('803', '33');
insert into DePara_Curso (co_grupo, idCurso) values ('9', '34');
insert into DePara_Curso (co_grupo, idCurso) values ('7', '35');
insert into DePara_Curso (co_grupo, idCurso) values ('12', '36');
insert into DePara_Curso (co_grupo, idCurso) values ('5', '37');
insert into DePara_Curso (co_grupo, idCurso) values ('43', '38');
insert into DePara_Curso (co_grupo, idCurso) values ('28', '39');
insert into DePara_Curso (co_grupo, idCurso) values ('6', '40');
insert into DePara_Curso (co_grupo, idCurso) values ('20', '41');
insert into DePara_Curso (co_grupo, idCurso) values ('18', '42');
insert into DePara_Curso (co_grupo, idCurso) values ('804', '43');
insert into DePara_Curso (co_grupo, idCurso) values ('15', '44');
insert into DePara_Curso (co_grupo, idCurso) values ('81', '45');
insert into DePara_Curso (co_grupo, idCurso) values ('67', '46');
insert into DePara_Curso (co_grupo, idCurso) values ('38', '47');
insert into DePara_Curso (co_grupo, idCurso) values ('39', '48');
insert into DePara_Curso (co_grupo, idCurso) values ('70', '49');
insert into DePara_Curso (co_grupo, idCurso) values ('90', '50');
insert into DePara_Curso (co_grupo, idCurso) values ('71', '51');
insert into DePara_Curso (co_grupo, idCurso) values ('72', '52');
insert into DePara_Curso (co_grupo, idCurso) values ('73', '53');
insert into DePara_Curso (co_grupo, idCurso) values ('74', '54');
insert into DePara_Curso (co_grupo, idCurso) values ('83', '55');
insert into DePara_Curso (co_grupo, idCurso) values ('75', '56');
insert into DePara_Curso (co_grupo, idCurso) values ('88', '57');
insert into DePara_Curso (co_grupo, idCurso) values ('92', '58');
insert into DePara_Curso (co_grupo, idCurso) values ('93', '59');
insert into DePara_Curso (co_grupo, idCurso) values ('76', '60');
insert into DePara_Curso (co_grupo, idCurso) values ('86', '61');
insert into DePara_Curso (co_grupo, idCurso) values ('89', '62');
insert into DePara_Curso (co_grupo, idCurso) values ('87', '63');
insert into DePara_Curso (co_grupo, idCurso) values ('91', '64');
insert into DePara_Curso (co_grupo, idCurso) values ('94', '65');
insert into DePara_Curso (co_grupo, idCurso) values ('77', '66');
insert into DePara_Curso (co_grupo, idCurso) values ('84', '67');
insert into DePara_Curso (co_grupo, idCurso) values ('85', '68');
insert into DePara_Curso (co_grupo, idCurso) values ('78', '69');
insert into DePara_Curso (co_grupo, idCurso) values ('69', '70');
insert into DePara_Curso (co_grupo, idCurso) values ('79', '71');
insert into DePara_Curso (co_grupo, idCurso) values ('80', '72');
insert into DePara_Curso (co_grupo, idCurso) values ('52', '73');
insert into DePara_Curso (co_grupo, idCurso) values ('29', '74');
insert into DePara_Curso (co_grupo, idCurso) values ('51', '75');