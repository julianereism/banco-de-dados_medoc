
-- ALTER TABLE, RENAME e DROP

-- ----------------------------

select * from codigoDeDoença;

rename table codigoDeDoença to cid;

-- ----------------------------------------------------------------

select * from distritoSanitario;

rename table distritoSanitario to distrito_sanitario;


-- ----------------------------------------------------------------

-- creat table ----------------------------------------------------

create table upa (
	idUpa int (10) auto_increment not null primary key,
    nome varchar (50) not null,
    email varchar (50) unique not null
    );

select * from upa;

insert into upa (nome, email)
	values ("Upa Caxangá", "upacaxanga@prefeitura.com"),
			("Upa Ibura", "upaibura@prefeitura.com");
            
delete from upa
	where idUpa = 1;

drop table upa;

-- ------------------------------------------------------------------

create table medico (
	idMedico int (10) auto_increment not null primary key,
    nome varchar (50) not null,
    nomeSocial varchar (50) null,
    cpf int (15) unique not null,
    email varchar (50) unique not null
    );
    
    select * from medico;
    
    rename table medico to responsavelMedico;
    
    drop table responsavelMedico;

-- ----------------------------------------------------

select * from hospital;

update Hospital 
	set qntdLeitos = 500
		where idHospital = 1;

rename table hospital to hospitais;