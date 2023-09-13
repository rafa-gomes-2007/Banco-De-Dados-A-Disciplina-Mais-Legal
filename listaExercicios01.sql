select titulo from livros;

select nome from autores where nascimento < "1900-01-01"; 

select titulo from livros where autor_id = "1";

select a.nome,m.curso 
from alunos as a
inner join matriculas as m on m.aluno_id = a.id 
where m.curso = "Engenharia de Software";

select produto, sum(receita) as receita_total
from vendas
group by produto;

select autores.nome as nome, count(titulo) as livros_por_autor
from livros
inner join autores on autores.id = livros.autor_id
group by nome;

select curso, count(aluno_id) as alunos_por_curso
from matriculas
group by curso;

select produto, avg(receita) as receita_media
from vendas
group by produto;

select produto,receita 
from vendas
where receita >= 10000;

select autores.nome as nome, count(titulo) as livros_por_autor
from livros
inner join autores on autores.id = livros.autor_id
group by nome
having count(titulo) >= 2;

select nome, livros.titulo 
from autores
inner join livros 
on autores.id = livros.autor_id;

select nome, matriculas.curso
from alunos
inner join matriculas
on alunos.id = matriculas.id;

select autores.nome, livros.titulo
from livros
left join autores 
on autores.id  = livros.autor_id;

select matriculas.curso, alunos.nome
from alunos
right join matriculas
on matriculas.id = alunos.id;

select matriculas.curso, alunos.nome
from alunos
inner join matriculas
on matriculas.id = alunos.id;

select autores.nome, livros.titulo
from livros
left join autores 
on autores.id  = livros.autor_id;

select nome, count(livros.autor_id) as maior_autor
from autores
inner join livros 
on autores.id = livros.autor_id
group by nome;