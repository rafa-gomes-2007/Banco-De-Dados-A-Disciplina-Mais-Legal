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
