USE UC13;

INSERT INTO Usuarios VALUES ('Danox', 'Senha321');
INSERT INTO Classes VALUES ('Monge', 'Monge com tunica marrom e capuz grande');
INSERT INTO Habilidades VALUES ('Recuperar a vida');
INSERT INTO Personagens VALUES ('BitBug',2,2);
INSERT INTO ClassesHabilidades VALUES (2,2), (2,3);


INSERT INTO Usuarios VALUES ('Aphonso', 'Senha564');
INSERT INTO Classes VALUES ('Barbaro', 'Com roupas de pele de urso e cabelos e barba longa');
INSERT INTO Habilidades VALUES ('Lança Mortal'),('Escudo Supremo');
INSERT INTO Personagens VALUES ('Deu Bug',1,1);
INSERT INTO ClassesHabilidades VALUES (1,1), (1,2);


SELECT * FROM Usuarios;
SELECT * FROM Classes;
SELECT * FROM Habilidades;
SELECT * FROM Personagens;
SELECT * FROM ClassesHabilidades;

