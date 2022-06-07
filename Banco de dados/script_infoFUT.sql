
CREATE database infoFUT;
USE infoFUT;


CREATE TABLE Torcedor (
  idTorcedor INT primary key AUTO_INCREMENT,
  Nome_Completo VARCHAR(45),
  CPF CHAR(13),
  estado CHAR(2),
  email VARCHAR(45),
  senha VARCHAR(8),
  fkPreferido int,
  foreign key (fkPreferido) references Site(idSite)
  );

CREATE TABLE Site (
  idSite INT primary key auto_increment,
  url VARCHAR(45),
  nome VARCHAR(45),
  descrição VARCHAR(45)
  );
insert into Site values 
(1, 'https://www.espn.com.br/', 'Fox Sports', 'Site do grupo Disney'),
(2, 'https://bandsports.band.uol.com.br/', 'Band Sports', 'Site do grupo Bandeirantes'),
(3, 'https://ge.globo.com/', 'Globo Esporte', 'Site do grupo Globo'),
(4, 'https://www.espn.com.br/', 'Espn', 'Site do grupo Disney'),
(5, 'https://www.lance.com.br/', 'Lance!', 'Site indendente de futebol'),
(6, 'https://www.uol.com.br/esporte/', 'UOL Esporte', 'Site do grupo Folha'),
(7, 'https://www.goal.com/br', 'Goal', 'Site independente de futebol');
select* from torcedor;