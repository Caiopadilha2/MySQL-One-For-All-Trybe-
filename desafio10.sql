SELECT
    c.nome_cancao AS nome,
    COUNT(h.cancao_id) AS reproducoes
FROM
    cancoes AS c
JOIN
    historico AS h
ON 
    c.cancao_id = h.cancao_id
JOIN
	usuario AS u
ON 
	h.usuario_id = u.usuario_id 
JOIN
	plano AS p
ON
	p.plano_id = u.plano_id
WHERE
	p.nome_plano = 'gratuito' OR p.nome_plano = 'pessoal'
GROUP BY 
	c.nome_cancao
ORDER BY
	nome_cancao ASC;