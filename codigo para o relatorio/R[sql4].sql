/* Para pesquisar produtos alternativos da mesma categoria de um determinado produto, você 
precisa ter uma maneira de identificar a categoria de um produto. Suponha que você tenha uma 
coluna categoria na tabela verificaçao_venda que identifica a categoria de cada produto.
Vamos supor que você queira encontrar produtos alternativos da mesma categoria que um produto 
específico chamado 'produto1'. Você pode usar o seguinte comando SQL:*/
SELECT 
 veri_Produto AS Produto_Alternativo
FROM 
 verificaçao_venda
WHERE 
 veri_Produto != 'produto1' AND
 categoria = (
   SELECT 
     categoria 
   FROM 
     verificaçao_venda 
   WHERE 
     veri_Produto = 'produto1'
 );
/*Neste comando, a subconsulta (SELECT categoria FROM verificaçao_venda WHERE veri_Produto = 'produto1') retorna 
a categoria do 'produto1'. A consulta principal então seleciona todos os produtos que não são 'produto1' e 
estão na mesma categoria.
Por favor, note que você precisa substituir 'produto1' pelo nome real do produto que você está interessado 
e categoria pelo nome real da coluna que identifica a categoria de um produto na tabela verificaçao_venda.*/