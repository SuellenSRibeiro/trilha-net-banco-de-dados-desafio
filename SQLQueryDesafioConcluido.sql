-- 1
SELECT 
Nome, Ano
FROM Filmes

-- 2

SELECT
Nome, Ano
FROM Filmes
ORDER BY
Nome, Ano

-- 3
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE
Nome = 'De Volta para o Futuro'

-- 4
SELECT
*
FROM Filmes
WHERE 
Ano = 1997

-- 5
SELECT
*
FROM Filmes
WHERE
Ano > 2000

-- 6
SELECT
*
FROM Filmes
WHERE
Duracao > 100
AND
Duracao <150
ORDER BY
Duracao

-- 7
select Ano,
count( * ) Quantidade from Filmes
group by Ano 
order by Quantidade desc

-- 8
SELECT
PrimeiroNome,
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT
PrimeiroNome,
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
select f.Nome, g.Genero from Filmes f
join FilmesGenero fg on fg.IdFilme = f.Id
 join Generos g	      on g.Id = fg.IdGenero

 -- 11
 select f.Nome, g.Genero from Filmes f
 join FilmesGenero fg on fg.IdFilme = f.Id
 join Generos g	      on g.Id = fg.IdGenero
 where g.Genero = 'Mistério'

-- 12
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
join ElencoFilme ef on ef.IdFilme = f.Id
join Atores      a  on a.Id       = ef.IdAtor