SELECT COUNT(c.nome_cancao) AS cancoes,
       COUNT(DISTINCT a.nome_artista) AS artistas,
       COUNT(DISTINCT al.nome_album) AS albuns
FROM 
    cancoes AS c
    JOIN artistas AS a
    JOIN album AS al
        ON c.album_id = al.album_id AND al.artista_id = a.artista_id;
