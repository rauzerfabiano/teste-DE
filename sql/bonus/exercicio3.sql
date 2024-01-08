--  Escreva uma consulta SQL para trazer todos os dados. Seja criativo

SELECT 
    A.nome AS Aluno, 
    GROUP_CONCAT(DISTINCT R.nome SEPARATOR ', ') AS Responsáveis, 
    COUNT(P.idResponsavel) AS TotalResponsáveis
FROM Aluno A
LEFT JOIN Parentesco P ON A.id = P.idAluno
LEFT JOIN Responsavel R ON P.idResponsavel = R.id
GROUP BY A.id;


-- Esta consulta lista cada aluno
-- os nomes dos seus responsáveis (concatenados em uma única string),
-- e a quantidade total de responsáveis por aluno. 
-- É uma maneira eficiente de visualizar as relações entre alunos e responsáveis e entender a estrutura familiar dos alunos em um contexto escolar.





