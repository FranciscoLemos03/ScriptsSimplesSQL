SELECT titulo, preço
    FROM livro
    WHERE autor LIKE 'E%'
    ORDER BY preço DESC FETCH NEXT 1 ROWS ONLY;