SELECT 
 ID_funcionario,
 (SELECT COUNT(*) FROM Vendas WHERE ID_funcionario = F.ID_funcionario ) AS vendas_efetuadas,
FROM 
 Vendas, verificaçao_venda , Funcionarios F
WHERE veri_data_venda >=  NOW() - INTERVAL 2 YEAR
GROUP BY 
 ID_funcionario
ORDER BY 
 vendas_efetuadas DESC;
