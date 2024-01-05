SELECT 
 ID_Vendas,
 veri_Produto,
 COUNT(*) AS NumeroDeVendas
FROM 
 (
  SELECT * FROM verificaçao_venda WHERE ID_docente IS NOT NULL AND ID_Estudantes IS NOT NULL
 ) AS vendas_clientes
GROUP BY 
 ID_Vendas, veri_Produto
ORDER BY 
 NumeroDeVendas DESC;
