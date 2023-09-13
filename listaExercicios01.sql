select titulo from livros;

select nome from autores where nascimento < "1900-01-01"; 

select titulo from livros where autor_id = "1";

select a.nome,m.curso 
from alunos as a
inner join matriculas as m on m.aluno_id = a.id 
where m.curso = "Engenharia de Software";