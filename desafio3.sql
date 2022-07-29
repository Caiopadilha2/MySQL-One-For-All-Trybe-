SELECT u.nome_usuario AS usuario,
       COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
       ROUND(SUM(c.duracao)/60,2) AS total_minutos
    FROM 
       usuario AS u
    JOIN historico AS h
    ON u.usuario_id = h.usuario_id
    JOIN cancoes AS c
    ON c.cancao_id = h.cancao_id
GROUP BY h.usuario_id
ORDER BY usuario;
