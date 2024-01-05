SELECT DATE_FORMAT(veri_data_venda, '%Y-%m-%d %H') AS Hora,
 COUNT(*) AS Total_de_Vendas
FROM verificaçao_venda
WHERE veri_data_venda >=  NOW() - INTERVAL 5 YEAR
GROUP BY 
Hora
ORDER BY
Hora DESC;
