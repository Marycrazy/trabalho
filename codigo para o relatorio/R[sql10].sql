/*Para identificar os clientes com mais compras de um determinado produto, 
você pode usar a tabela verificaçao_venda. Esta tabela contém informações 
sobre as vendas, incluindo o ID do produto vendido e a data da venda. */
SELECT veri_Produto, 
    COUNT(*) AS NumerodeVendas
FROM verificaçao_venda

WHERE veri_Produto = 'nome do produto' 

GROUP BY veri_Produto

ORDER BY
NumerodeVendas DESC;

/* veri_Produto é o nome do produto que você está interessado. 
substituir 'nome_do_produto' pelo nome real do produto que deseja.
COUNT(*) é uma função que conta o número de linhas, que neste caso é o número de compras do produto.
GROUP BY veri_Produto agrupa os resultados pelo nome do produto, de modo que você obtenha um total de compras para cada produto.
ORDER BY NumeroDeCompras DESC ordena os resultados pelo número de compras em ordem decrescente. Isso significa que o produto com mais compras aparecerá primeiro.
*/

