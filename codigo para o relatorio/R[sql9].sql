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

/*COUNT(*) AS NumeroDeVendas: A função COUNT(*) é usada para contar o número de linhas. 
Neste caso, ele está contando o número de vendas para cada combinação de ID_Vendas e veri_Produto. 
O AS NumeroDeVendas é usado para dar um alias para a coluna resultante.
FROM: Esta parte da consulta define a tabela da qual os dados serão recuperados. 
Neste caso, a tabela é uma subconsulta.
Subconsulta: A subconsulta (SELECT * FROM verificaçao_venda WHERE ID_docente IS NOT NULL AND ID_Estudantes IS NOT NULL) seleciona todas as colunas da tabela verificaçao_venda onde ID_docente e ID_Estudantes não são nulos. Isso significa que ela está selecionando apenas as vendas que têm um docente e um estudante. A subconsulta é então dada um alias vendas_clientes.
GROUP BY: Esta parte da consulta agrupa as linhas retornadas pela subconsulta por ID_Vendas e veri_Produto. Isso significa que para cada combinação única de ID_Vendas e veri_Produto, haverá apenas uma linha no resultado final.
ORDER BY: Finalmente, esta parte da consulta ordena as linhas retornadas pelo número de vendas em ordem decrescente. Isso significa que o produto mais vendido para cada venda aparecerá primeiro no resultado final*/
