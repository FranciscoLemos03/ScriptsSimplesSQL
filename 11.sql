Select titulo 
    from livro
    where autor like 'E%' AND PREÇO IN (
    Select distinct max(preço) from livro
    where autor like 'E%'
    );