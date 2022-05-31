USE bd_ferroviaria;

create table tb_estacao
(cd_estac INT AUTO_INCREMENT PRIMARY KEY,
nm_estac VARCHAR(80) NOT NULL,
hr_fuc DATETIME NOT NULL,
nm_loc VARCHAR(180) NOT NULL,
nr_lin INT NOT NULL,
qt_func INT);


CREATE TABLE tb_cliente
(cd_cli INT AUTO_INCREMENT PRIMARY KEY,
nr_bilh INT NOT NULL,
hr_bilh DATETIME NOT NULL,
pag BOOLEAN NOT NULL, /* 1 - dindin 2 - card*/
nr_banc INT(200) NOT NULL);


CREATE TABLE tb_trem
(cd_trem INT AUTO_INCREMENT PRIMARY KEY,
hr_sai DATETIME NOT NULL,
hr_cheg DATETIME NOT NULL,
nm_moto VARCHAR(125) NOT NULL,
qt_vago INT,
desc_tem VARCHAR (200) DEFAULT 'BOAS CONDIÇÕES');



CREATE TABLE tb_rota
(cd_rota INT AUTO_INCREMENT PRIMARY KEY,
nr_rota INT(6) NOT NULL,
nm_rota VARCHAR (80) NOT NULL,
paradas VARCHAR (150) NOT NULL,
qt_reser INT NOT NULL,
situac_rota VARCHAR (50) DEFAULT 'BOA');

INSERT INTO tb_rota VALUES
(NULL,12, 'Bruno e Marrona','Estação Chopp', 150 , default),
(NULL,12, 'sei la','pqp', 240 , default),
(NULL,12, 'Bruno e Mayke','pinheiros', 320 , default),
(NULL,12, 'Calibre','Estação da estação na estação proximo a estação', 160 , 'vento forte'),
(NULL,12, 'Pepe Moreno','Cannil', 10 , 'pessima');


SELECT * FROM tb_rota;
