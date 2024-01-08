-- Escreva uma consulta SQL para retornar dados únicos conforme tabela abaixo.
-- Caso o aluno tenha mais de dois responsáveis, traga apenas os dois primeiros
-- responsáveis encontrados na tabela.
-- Aluno Responsável Parentesco Responsável Parentesco

SELECT 
    A.nome AS Aluno, 
    R1.nome AS Responsável1, 
    P1.Parentesco AS Parentesco1, 
    R2.nome AS Responsável2, 
    P2.Parentesco AS Parentesco2
FROM Aluno A
LEFT JOIN (SELECT * FROM Parentesco WHERE id IN (SELECT MIN(id) FROM Parentesco GROUP BY idAluno)) P1 ON A.id = P1.idAluno
LEFT JOIN Responsavel R1 ON P1.idResponsavel = R1.id
LEFT JOIN (SELECT * FROM Parentesco WHERE id IN (SELECT MIN(id) FROM Parentesco WHERE id > (SELECT MIN(id) FROM Parentesco GROUP BY idAluno) GROUP BY idAluno)) P2 ON A.id = P2.idAluno
LEFT JOIN Responsavel R2 ON P2.idResponsavel = R2.id;