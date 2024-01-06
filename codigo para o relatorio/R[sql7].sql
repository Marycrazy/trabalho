SELECT F.ID_funcionario,
 (SELECT COUNT(*) FROM Vendas WHERE ID_funcionario = F.ID_funcionario ) AS vendas_efetuadas

FROM Vendas, verificaçao_venda , Funcionarios F

WHERE veri_data_venda >=  NOW() - INTERVAL 2 YEAR

GROUP BY F.ID_funcionario

ORDER BY vendas_efetuadas DESC;

/*
(SELECT COUNT(*) FROM Vendas WHERE ID_funcionario = F.ID_funcionario) AS vendas_efetuadas: Subconsulta que calcula o número de 
vendas (COUNT(*)) feitas por cada funcionário (ID_funcionario). 

veri_data_venda >= NOW() - INTERVAL 2 YEAR: Essa condição filtra as linhas com base na coluna veri_data_venda, selecionando 
apenas os registros em que a data da venda está nos últimos dois anos.

GROUP BY
ID_funcionario: Agrupa os resultados pelo ID_funcionario, agregando a contagem de vendas para cada funcionário.

ORDER BY
vendas_efetuadas DESC: Ordena o conjunto de resultados em ordem decrescente com base no cálculo de vendas_efetuadas 
(número de vendas) para cada funcionário.

*/