SELECT *
FROM encomendas
WHERE Enc_Recepcao == FALSE 
AND Enc_Data_Entrega >= NOW() - INTERVAL 2 YEAR;