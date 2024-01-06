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

/*
SUM(V_custo_total) AS Total_de_Vendas: Calcula a soma dos valores na coluna V_custo_total para cada grupo de veri_Produto 
e renomeia essa coluna como Total_de_Vendas.
COUNT(*) AS Quantidade_de_Vendas: Conta o número total de linhas para cada grupo de veri_Produto e renomeia essa coluna 
como Quantidade_de_Vendas.
GROUP BY veri_Produto: Agrupa os resultados por veri_Produto. Isso significa que para cada valor único de veri_Produto, 
haverá uma única linha nos resultados.
*/