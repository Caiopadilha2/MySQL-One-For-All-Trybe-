SELECT
    COUNT(u.usuario_id) AS quantidade_musicas_no_historico
FROM
    historico AS h
JOIN
    usuario AS u
ON 
    u.usuario_id = h.usuario_id
WHERE 
    u.nome_usuario = 'Bill';
