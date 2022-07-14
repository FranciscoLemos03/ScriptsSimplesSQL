Select leitor.nome, livro.titulo, livro.autor, req.datar
From req inner join leitor 
On leitor.cod = req.lei 
inner join livro
On  req.liv = livro.nr;

Select leitor.nome, livro.titulo, livro.autor, req.datar
    From leitor, livro, req
Where leitor.cod = req.lei and req.liv = livro.nr;

Select *
From req, livro
where nr = liv (+) and liv is null;