#todos os alunos cuja idade seja menor que 18 anos
SELECT * from user as u 
INNER JOIN aluno as a on a.user_user_id=u.user_id 
WHERE u.user_idade < 18;

#endereço e as informações pessoais de todos os alunos que não moram em Coxim
SELECT u.user_nome as nome , u.user_idade as idade, e.endereco_logadouro as logadouro, e.endereco_cidade as cidade
from user as u INNER JOIN aluno as a on a.user_user_id=u.user_id 
INNER JOIN endereco as e ON e.idendereco_id= u.endereco_idendereco_id 
WHERE e.endereco_cidade  NOT LIKE "coxim"

#todos os alunos do curso de sistemas de informação
SELECT u.user_nome as nome, a.RGA as RGA, u.user_idade as idade
from user as u 
INNER JOIN aluno as a ON u.user_id =a.user_user_id 
INNER JOIN aluno_has_curso ac on a.idaluno=ac.aluno_idaluno 
INNER JOIN curso AS c on c.curso_id= ac.curso_curso_id 
WHERE c.curso_nome LIKE "sistemas de informação"

#Imprima todos os alunos com empréstimos realizados
SELECT DISTINCT  u.user_nome as nome FROM user as u 
INNER JOIN user_has_livro as l ON u.user_id = l.user_user_id 
INNER JOIN aluno as a 
WHERE l.estado LIKE "ativo"

#todos os professores do curso de sistemas de informação
SELECT p.Siape as siape, u.user_nome as nome
from user as u 
INNER JOIN professor as p ON u.user_id = p.user_user_id
INNER JOIN professor_has_curso as pc on pc.professor_professor_id = p.professor_id
INNER JOIN curso AS c on c.curso_id= pc.curso_curso_id
WHERE c.curso_nome LIKE "sistemas de informação"


#alunos e professores com empréstimos realizados
SELECT DISTINCT u.user_nome as nome 
FROM user as u 
INNER JOIN user_has_livro as l ON u.user_id = l.user_user_id 
LEFT JOIN professor as p on p.user_user_id = u.user_id 
LEFT JOIN aluno as al on al.user_user_id = u.user_id
WHERE l.estado LIKE "ativo"

#todos os usuários (aluno ou professor) com empréstimos ativo
SELECT DISTINCT u.user_nome as nome 
FROM user as u 
INNER JOIN user_has_livro as l ON u.user_id = l.user_user_id 
LEFT JOIN professor as p on p.user_user_id = u.user_id 
LEFT JOIN aluno as al on al.user_user_id = u.user_id


#todos os usuários com empréstimo já inativo (a obra já foi devolvida)
SELECT DISTINCT u.user_nome as nome FROM user as u 
INNER JOIN user_has_livro as l ON u.user_id = l.user_user_id 
WHERE l.estado LIKE "ativo"


#todos os usuários de sistemas de informação com empréstimo ativo
SELECT DISTINCT u.user_nome as nome FROM user as u 
INNER JOIN user_has_livro as l ON u.user_id = l.user_user_id
LEFT JOIN aluno as a on a.user_user_id = u.user_id
LEFT JOIN professor as p on p.user_user_id = u.user_id
LEFT JOIN professor_has_curso as pc on pc.professor_professor_id = p.professor_id
LEFT JOIN aluno_has_curso as ac on a.idaluno = ac.aluno_idaluno
LEFT JOIN curso as c on c.curso_id = pc.curso_curso_id or c.curso_id = ac.curso_curso_id
WHERE l.estado LIKE "ativo"
AND c.curso_nome LIKE "sistemas de informação"


#todos os usuários que possuem empréstimo ativo de livros com ano de publicação maior que 2015
SELECT DISTINCT u.user_nome as nome, l.livro_nome as nome_livro FROM user as u 
INNER JOIN user_has_livro as ul ON u.user_id = ul.user_user_id
INNER JOIN livro as l on l.livro_id=ul.livro_livro_id
LEFT JOIN aluno as a on a.user_user_id = u.user_id
LEFT JOIN professor as p on p.user_user_id = u.user_id
LEFT JOIN professor_has_curso as pc on pc.professor_professor_id = p.professor_id
LEFT JOIN aluno_has_curso as ac on a.idaluno = ac.aluno_idaluno
LEFT JOIN curso as c on c.curso_id = pc.curso_curso_id or c.curso_id = ac.curso_curso_id
WHERE ul.estado LIKE "ativo"
and YEAR(l.ano_plublic) > 2015



#Imprima todos os usuários de sistema de informação que fizeram empréstimo de obras do autor Tanenbaum;
SELECT DISTINCT u.user_nome FROM autor as a 
INNER JOIN livro_has_autor as la on la.autor_autor_id = a.autor_id 
INNER JOIN livro as l on la.livro_livro_id=l.livro_id 
INNER join user_has_livro ul on ul.livro_livro_id = l.livro_id
INNER JOIN aluno as al on al.user_user_id = ul.user_user_id 
INNER JOIN aluno_has_curso ac on ac.aluno_idaluno = al.idaluno 
INNER JOIN curso as c on c.curso_id = ac.curso_curso_id
INNER JOIN user as u on al.user_user_id = u.user_id
WHERE a.autor_nome LIKE "Tanenbaum"
and c.curso_nome like "sistemas de informação";



#Imprima todas as obras com participação do autor Pressman;
SELECT l.livro_nome as nome, l.livro_qt_pag as paginas, YEAR(l.ano_plublic) as ano FROM autor as a 
INNER JOIN livro_has_autor as la on la.autor_autor_id = a.autor_id 
INNER JOIN livro as l on la.livro_livro_id=l.livro_id 
WHERE a.autor_nome LIKE "Pressman"


#Imprima todos os empréstimos que foram renovados
SELECT l.livro_nome as nome, l.livro_qt_pag as pag FROM user_has_livro as ul
INNER JOIN livro as l on l.livro_id = ul.livro_livro_id
WHERE ul.estado like "renovado"
