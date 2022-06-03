
CREATE database infoFUT;
USE infoFUT;


CREATE TABLE Torcedor (
  idTorcedor INT primary key AUTO_INCREMENT,
  Nome_Completo VARCHAR(45),
  CPF CHAR(13),
  estado CHAR(2),
  email VARCHAR(45),
  senha VARCHAR(8)
  );

CREATE TABLE Sites (
  idSites INT primary key auto_increment,
  url VARCHAR(45),
  nome VARCHAR(45),
  descrição VARCHAR(45)
  );

CREATE TABLE Preferencias (
  fkTorcedor INT,
  fkSite INT,
  data DATETIME DEFAULT now(),
  PRIMARY KEY (fkTorcedor, fkSite),
    FOREIGN KEY (fkTorcedor) REFERENCES Torcedor(idTorcedor),
    FOREIGN KEY (fkSite) REFERENCES Sites(idSites)
    );


