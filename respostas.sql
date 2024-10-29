--1
SELECT  Nome ,Ano FROM Filmes;

--2
SELECT Nome,Ano,Duracao 
FROM Filmes
ORDER BY Ano;

--3
SELECT Nome,Ano,Duracao
FROM Filmes
WHERE Nome = 'De volta para o futuro';

--4
SELECT Nome,Ano,Duracao
FROM Filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao;

--7
SELECT Ano ,COUNT(*) as QTD
FROM Filmes
GROUP BY Ano
ORDER BY QTD DESC

--8
SELECT PrimeiroNome , UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9
SELECT PrimeiroNome , UltimoNome, Genero
FROM Atores
ORDER BY PrimeiroNome;

--10
SELECT Filmes.Nome , Generos.Genero 
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.idFilme
JOIN Generos ON Generos.Id = FilmesGenero.idGenero

--11
SELECT Filmes.Nome , Generos.Genero 
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.idFilme
JOIN Generos ON Generos.Id = FilmesGenero.idGenero
WHERE Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome , Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
	JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
	JOIN Atores ON Atores.Id = ElencoFilme.IdAtor