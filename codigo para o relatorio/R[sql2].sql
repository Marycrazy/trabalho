/*Listagem de todos os produtos, indicando o valor total de vendas desse produto e quantas vezes foi
vendido;*/
SELECT 
   veri_Produto,
   SUM(V_custo_total) AS Total_de_Vendas,
   COUNT(*) AS Quantidade_de_Vendas
FROM 
   verificaçao_venda, vendas
GROUP BY 
   veri_Produto
