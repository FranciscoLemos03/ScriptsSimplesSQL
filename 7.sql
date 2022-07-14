SELECT autor ,AVG(preço)
FROM livro
GROUP BY autor;