SELECT ID_Estudantes,
 COUNT(*) AS NumeroDeaquisicoes,
 SUM(IF (ID_Vendas IS NULL ,1, 0)) AS NumeroDeFaltasDePagamento
FROM 
 verificaçao_venda
GROUP BY 
 ID_Estudantes
ORDER BY 
 NumeroDeFaltasDePagamento DESC, NumeroDeaquisicoes DESC;

 /* COUNT(*) AS NumeroDeaquisicoes  conta o número de linhas, que neste caso é o número 
total de aquisiçoes de fotocópias do estudante.
SUM(IF(ID_Vendas IS NULL, 1, 0)) AS NumeroDeFaltasDePagamento soma o número de vezes que ID_Vendas é NULL 
para cada ID_Estudantes. Se ID_Vendas for NULL, isso significa que há uma falta de pagamento, então 
adicionamos 1 à soma. Caso contrário, adicionamos 0. Renomeamos essa coluna como NumeroDeFaltasDePagamento. 
GROUP BY ID_Estudantes agrupa os resultados pelo identificador do estudante, de modo que você obtenha 
um total de aquisiçoes e faltas de pagamento para cada estudante.
ORDER BY NumeroDeFaltasDePagamento DESC, NumeroDeRequisicoes DESC ordena os resultados pelo número de 
faltas de pagamento e pelo número total de aquisiçoes em ordem decrescente. Isso significa que o 
estudante com mais faltas de pagamento e o maior número total de aquisiçoes aparecerão primeiro.
 */

