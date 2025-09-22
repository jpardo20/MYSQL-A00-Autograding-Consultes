USE institut;

INSERT INTO professors (idProfessor, nom, email) VALUES
(1, 'Anna Serra', 'anna.serra@example.com'),
(2, 'Jordi Vidal', 'jordi.vidal@example.com');

INSERT INTO assignatures (idAssignatura, nom, credits, idProfessor) VALUES
(10, 'Bases de Dades I', 6, 1),
(11, 'Programació I',     6, 2),
(12, 'Llenguatges de Marques', 4, 1);

INSERT INTO cursos (idCurs, nom, hores) VALUES
(101, '1r de DAM', 480),
(102, '2n de DAM', 480);

INSERT INTO cursassignatura (idCurs, idAssignatura) VALUES
(101, 10), (101, 11), (101, 12), (102, 10);

INSERT INTO alumnes (idAlumne, nom, email) VALUES
(1001, 'Pol Roca',  'pol.roca@example.com'),
(1002, 'Laia Puig', 'laia.puig@example.com'),
(1003, 'Marta Solé', NULL);

INSERT INTO matricules (idAlumne, idCurs, data, notaFinal) VALUES
(1001, 101, '2025-09-10', 7.5),
(1002, 101, '2025-09-10', 8.0);
