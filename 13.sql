SELECT nome, datar AS "Data Requisição", datae AS "Data Entrega"
    FROM req, leitor
    WHERE lei = cod AND datar = (SELECT MAX(datar)
                                    FROM req)
UNION
SELECT nome, datar, datae 
    FROM req, leitor
    WHERE lei = cod AND datae = (SELECT MIN(datae)
                                    FROM req);
SELECT * FROM livro
    MINUS
SELECT * FROM livro
    WHERE autor = 'Eça de Queiroz';