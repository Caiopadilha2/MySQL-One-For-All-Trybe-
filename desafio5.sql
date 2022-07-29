SELECT 
    c.nome_cancao AS cancao,
    COUNT(h.cancao_id) AS reproducoes
FROM
    cancoes AS c
JOIN
    historico AS h
ON 
    c.cancao_id = h.cancao_id
GROUP BY
     h.cancao_id
ORDER BY 
    reproducoes DESC,
    nome_cancao
    LIMIT 2;