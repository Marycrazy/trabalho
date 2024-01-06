SELECT *
FROM encomendas
WHERE Enc_Recepcao == FALSE 
AND Enc_Data_Entrega >= NOW() - INTERVAL 2 YEAR;

/* ele seleciona tudo e vai mostrar todas as entregas que nao foram feitas nos ultimos 2 anos*/