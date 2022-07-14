SELECT autor ,AVG(preço)
FROM livro
HAVING avg(preço)<500
GROUP BY autor;