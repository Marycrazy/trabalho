/*Listagem do número total e valor total de vendas por produto e por cliente;*/
SELECT veri_Produto,
    COUNT(*) AS NumeroDeVendas,
    SUM(V_custo_total) AS ValorTotalDeVendas
FROM verificaçao_venda, vendas
GROUP BY veri_Produto
order by   NumeroDeVendas DESC, ValorTotalDeVendas DESC;

/*veri_Produto é o nome do produto
COUNT(*) é usado para contar o número total de vendas do produto.
SUM(V_custo_total) vai somar os valores na coluna V_custo_total, que é o valor total das vendas do produto.
GROUP BY veri_Produto agrupa os resultados pelo nome do produto, de modo que você obtenha um total de vendas para cada produto.
ORDER BY NumeroTotalDeVendas DESC, ValorTotalDeVendas DESC ordena os resultados pelo número total de vendas e pelo valor total de vendas em ordem decrescente. Isso significa que o produto com mais vendas e o maior valor total de vendas aparecerão primeiro.*/