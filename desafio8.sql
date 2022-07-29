SELECT a.nome_artista AS artista,
       al.nome_album AS album
    FROM
       artistas AS a
    JOIN 
        album AS al
    ON a.artista_id = al.artista_id
    WHERE a.nome_artista = 'Walter Phoenix'
    ORDER BY al.nome_album;