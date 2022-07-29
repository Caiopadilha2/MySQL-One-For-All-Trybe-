SELECT
    a.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(s.artista_id) AS seguidores
FROM
    artistas AS a
JOIN
    album AS al
ON
    a.artista_id = al.artista_id
JOIN
    seguidores AS s
ON 
    a.artista_id = s.artista_id
GROUP BY
	al.nome_album, a.nome_artista
ORDER BY
	seguidores DESC,
    a.nome_artista ASC,
    al.nome_album ASC;