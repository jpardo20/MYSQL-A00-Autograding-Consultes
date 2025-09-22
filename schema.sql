-- Reinicia l'esquema
DROP DATABASE IF EXISTS institut;
CREATE DATABASE institut CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE institut;

-- Taules (lowercase, InnoDB)
CREATE TABLE professors (
  idProfessor   INT PRIMARY KEY,
  nom           VARCHAR(60)  NOT NULL,
  email         VARCHAR(100) UNIQUE
) ENGINE=InnoDB;

CREATE TABLE assignatures (
  idAssignatura INT PRIMARY KEY,
  nom           VARCHAR(100) NOT NULL,
  credits       INT NOT NULL,
  idProfessor   INT,
  CONSTRAINT fk_assig_prof FOREIGN KEY (idProfessor)
    REFERENCES professors(idProfessor)
    ON UPDATE CASCADE
    ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE cursos (
  idCurs        INT PRIMARY KEY,
  nom           VARCHAR(100) NOT NULL,
  hores         INT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE cursassignatura (
  idCurs        INT,
  idAssignatura INT,
  PRIMARY KEY (idCurs, idAssignatura),
  CONSTRAINT fk_ca_curs FOREIGN KEY (idCurs)
    REFERENCES cursos(idCurs)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT fk_ca_assig FOREIGN KEY (idAssignatura)
    REFERENCES assignatures(idAssignatura)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE alumnes (
  idAlumne      INT PRIMARY KEY,
  nom           VARCHAR(50)  NOT NULL,
  email         VARCHAR(100) UNIQUE
) ENGINE=InnoDB;

CREATE TABLE matricules (
  idAlumne   INT,
  idCurs     INT,
  data       DATE,
  notaFinal  DECIMAL(3,1),
  PRIMARY KEY (idAlumne, idCurs),
  CONSTRAINT fk_mat_alumne FOREIGN KEY (idAlumne)
    REFERENCES alumnes(idAlumne)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT fk_mat_curs FOREIGN KEY (idCurs)
    REFERENCES cursos(idCurs)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB;
