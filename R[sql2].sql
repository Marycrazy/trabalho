/*Listagem de todos os produtos, indicando o valor total de vendas desse produto e quantas vezes foi
vendido;*/
SELECT 
   veri_Produto AS Produto,
   SUM(veri_valor_venda) AS Total_de_Vendas,
   COUNT(*) AS Quantidade_de_Vendas
FROM 
   verificaçao_venda
GROUP BY 
   Produto;
