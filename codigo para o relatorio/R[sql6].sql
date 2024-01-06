SELECT DATE_FORMAT(veri_data_venda, '%Y-%m-%d %H') AS Hora,
 COUNT(*) AS Total_de_Vendas

FROM verificaçao_venda

WHERE veri_data_venda >=  NOW() - INTERVAL 5 YEAR

GROUP BY Hora

ORDER BY Hora DESC;

/*DATE_FORMAT(veri_data_venda, '%Y-%m-%d %H') AS Hora: 
A função DATE_FORMAT() está sendo usada para formatar a data e a hora de cada venda. O argumento '%Y-%m-%d %H' especifica que queremos o ano, mês, dia e hora. 
O resultado é armazenado na nova coluna Hora.

COUNT(*) AS Total_de_Vendas: A função COUNT() está sendo usada para contar o número de vendas para cada hora. 
Como estamos agrupando as vendas por hora (usando GROUP BY Hora), COUNT(*) retorna o número de vendas para cada hora.

WHERE veri_data_venda >= NOW() - INTERVAL 5 YEAR: Esta cláusula WHERE limita as vendas consideradas para as últimas 5 anos.
OU seja, A expressão NOW() - INTERVAL 5 YEAR é usada para subtrair 5 anos da data e hora atuais.
A função NOW() retorna a data e hora atuais. O operador - é usado para subtrair um intervalo de tempo da data e hora atuais. 
O comando INTERVAL 5 YEAR especifica um intervalo de 5 anos. Portanto, NOW() - INTERVAL 5 YEAR retorna a data e hora exatas 
de 5 anos atrás.

GROUP BY Hora: A cláusula GROUP BY agrupa as vendas por hora. Isso significa que para cada hora única, haverá uma linha no 
resultado com o número de vendas para essa hora.

ORDER BY Hora DESC: A cláusula ORDER BY ordena as horas em ordem decrescente. Isso significa que o resultado mostra primeiro
a hora com o maior número de vendas.*/