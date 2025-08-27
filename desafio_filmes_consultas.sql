-- DESAFIO 1: Listar nome e ano de todos os filmes
SELECT
    Nome,
    Ano
FROM
    Filmes;

-- DESAFIO 2: Listar nome e ano de todos os filmes ordenados por ano
SELECT
    Nome,
    Ano
FROM
    Filmes
ORDER BY
    Ano;

-- DESAFIO 3: Listar nome, ano e duracao do filme 'De Volta para o Futuro'
SELECT
    Nome,
    Ano,
    Duracao
FROM
    Filmes
WHERE
    Nome = 'De Volta para o Futuro';

-- DESAFIO 4: Listar nome, ano e duracao dos filmes do ano de 1997
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

-- DESAFIO 5: Listar nome, ano e duracao dos filmes lancados apos o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- DESAFIO 6: Listar nome, ano e duracao de filmes com duracao entre 100 e 150 minutos
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
-- 2

-- DESAFIO 7: Listar quantidade de filmes lancados por ano
SELECT
  Ano,
  COUNT(id) AS Quantidade
FROM Filmes
GROUP BY
  Ano
ORDER BY
  Quantidade DESC;

-- DESAFIO 8: Listar atores do genero masculino
SELECT
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE
  Genero = 'M';

-- DESAFIO 9: Listar atrizes do genero feminino
SELECT
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE
  Genero = 'F'
ORDER BY
  PrimeiroNome ASC;

-- DESAFIO 10: Listar nome do filme e genero
SELECT
  F.Nome AS NomeDoFilme,
  G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG
  ON F.Id = FG.IdFilme
JOIN Generos AS G
  ON FG.IdGenero = G.Id;

-- DESAFIO 11: Listar nome do filme e genero do tipo 'Misterio'
SELECT
  F.Nome AS NomeDoFilme,
  G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG
  ON F.Id = FG.IdFilme
JOIN Generos AS G
  ON FG.IdGenero = G.Id
WHERE
  G.Genero = 'Mistério';

-- DESAFIO 12: Listar nome do filme, atores e seus papeis
SELECT
  F.Nome AS NomeDoFilme,
  A.PrimeiroNome,
  A.UltimoNome,
  EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF
  ON F.Id = EF.IdFilme
JOIN Atores AS A
  ON EF.IdAtor = A.Id;
