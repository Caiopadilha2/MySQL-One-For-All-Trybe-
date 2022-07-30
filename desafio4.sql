SELECT
	u.nome_usuario AS usuario,
    if (YEAR(MAX(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo' ) AS condicao_usuario
FROM
	usuario AS u
JOIN
	historico AS h
ON 
	h.usuario_id = u.usuario_id
GROUP BY
	u.nome_usuario
ORDER BY
	nome_usuario
