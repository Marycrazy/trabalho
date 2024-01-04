/*Apresentar o total (valor) de vendas por cada mês do presente ano;*/
SELECT 
 YEAR(veri_data_venda) AS Ano,
 MONTH(veri_data_venda) AS Mes,
 SUM(V_custo_total) AS Total_de_Vendas
FROM 
 verificaçao_venda, Vendas
WHERE 
 YEAR(veri_data_venda) = YEAR(CURRENT_DATE())
GROUP BY 
 Ano, Mes
ORDER BY 
 Ano, Mes;

/*Neste comando, YEAR(veri_data_venda) retorna o ano da data de 
venda e MONTH(veri_data_venda) retorna o mês da data de venda. 
SUM(veri_valor_venda) calcula o valor total de vendas para cada mês.
A cláusula WHERE filtra as vendas para apenas o ano atual. 
A cláusula GROUP BY agrupa os resultados por ano e mês, então você obtém uma lista de meses 
com seus valores de vendas totais correspondentes.
Por favor, note que você precisa substituir veri_valor_venda pelo nome real da coluna que contém 
o valor de cada venda na tabela verificaçao_venda
CURRENT_DATE() returna a data em que estamos.*/