
-- SELECT SIMPLES -------------------------------------------------------------------

select * from ace;

select * from acs;

select * from cid;

select * from distrito_sanitario;

select * from endereco;

select * from esgoto;

select * from hospital;

select * from internacoes;

select * from paciente;

select * from telefone;

-- ----------------------------------------------------------------------------------------------
-- SELECT COMPOSTO -- ---------------------------------------------------------------------------

select cpf as "CPF", nome as "Paciente", sexo as "Gênero", cor as "Raça", preCid as "CID prévio"
	from paciente
		order by nome;

select nome as "Hospital", especializacao as "Especialização", tipo as "Tipo"
	from hospital
		order by nome;
        
select p.nome as "Paciente", b.nome as "Bairro", d.nome as "Distrito"
	from paciente p, bairro b, distrito_sanitario d
		where p.cpf = b.Paciente_cpf and b.Distrito_Sanitario_idDS = d.idDS
			order by p.nome;
            
	select p.nome as "Paciente", b.nome as "Bairro", d.nome as "Distrito"
		from paciente p, bairro b, distrito_sanitario d
			where p.cpf = b.Paciente_cpf and b.Distrito_Sanitario_idDS = d.idDS and d.nome like "Distrito IV"
				order by p.nome;
            
select nome as "Bairro", Distrito_Sanitario_idDS as "Distrito Sanitário"
	from bairro
		where Distrito_Sanitario_idDS = 2
			order by nome;

select nomeCid as "CID", nomePopular as "Nome"
	from cid
		where nomeCid like "R.51"
			order by nome;

select p.nome as "Paciente", p.cpf as "CPF", b.nome as "Bairro"
	from paciente p, bairro b
		where p.cpf = Paciente_cpf
			order by p.nome;
			

select t.numero as "Telefone", h.nome as "Hospital", h.idHospital as "Id Hospital"
	from telefone t, hospital h
		where h.idHospital = t.Hospital_idHospital;
	
select p.nome as "Nome", c.nomePopular as "Doença", h.nome as "Hospital"
	from Paciente p, CID c, Hospital h, Internacoes i, Alta a
		where p.cpf = a.Paciente_cpf and a.internacoes_idInternacoes = i.idInternacoes and c.nomeCid = i.CID_nomeCid and h.idHospital = a.Hospital_idHospital;


select i.cid as "CID", p.cpf as "CPF", p.nome as "Paciente", h.nome as "Hospital"
	from Paciente p, Hospital h, Internacoes i, Alta a
		where p.cpf = a.Paciente_cpf and a.internacoes_idInternacoes = i.idInternacoes and h.idHospital = a.Hospital_idHospital and i.cid like "A27";
        