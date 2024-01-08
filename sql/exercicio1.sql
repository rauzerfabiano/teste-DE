-- Escreva comandos SQL para inserir os dados abaixo conforme o diagrama apresentado.
-- a) Pablo é Pai de Lucas
-- b) Brenda é Mãe de Lucas

-- Inserir responsáveis e aluno
INSERT INTO Responsavel (nome) VALUES ('Pablo'), ('Brenda');
INSERT INTO Aluno (nome) VALUES ('Lucas');

-- Inserir parentesco
INSERT INTO Parentesco (idResponsavel, idAluno, Parentesco) 
VALUES 
((SELECT id FROM Responsavel WHERE nome = 'Pablo'), (SELECT id FROM Aluno WHERE nome = 'Lucas'), 'Pai'),
((SELECT id FROM Responsavel WHERE nome = 'Brenda'), (SELECT id FROM Aluno WHERE nome = 'Lucas'), 'Mãe');
