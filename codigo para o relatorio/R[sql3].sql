/*Pesquisa de produtos vendidos dentro de um intervalo de tempo;*/
SELECT 
  veri_Produto 
FROM 
  verificaçao_venda
WHERE 
  veri_data_venda BETWEEN 'data_inicial' AND 'data_final'
GROUP BY 
  veri_Produto;
