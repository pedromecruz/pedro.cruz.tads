UPDATE VENDAS
SET id_cliente = CASE vendedor
    WHEN 'Ana' THEN 1
    WHEN 'Bruna' THEN 2
    WHEN 'Carlos' THEN 3
END;

--Liste o nome do cliente e o produto de cada venda, mostrando também a cidade.

SELECT
    C.NOME AS CLIENTE,
    V.PRODUTO,
    V.VALOR,
    C.CIDADE 
FROM VENDAS V 
INNER JOIN CLIENTES C
ON C.ID = V.ID_CLIENTE;

SELECT * FROM CLIENTES;

--Mostre o total de vendas por estado.

SELECT 
    SUM(V.VALOR) AS TOTAL_VENDAS,
    C.ESTADO
FROM VENDAS V 
INNER JOIN CLIENTES C
ON C.ID = V.ID_CLIENTE
GROUP BY C.ESTADO
ORDER BY TOTAL_VENDAS DESC;
