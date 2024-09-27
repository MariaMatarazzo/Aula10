CREATE DATABASE gersalarios;
use gersalarios;

create table cargo(
cargo_id int auto_increment primary key not null,
nome varchar (100) not null,
salario decimal (10,2) not null,
descricao varchar (100)
);

create table funcionarios(
id int auto_increment primary key not null,
nome varchar (50) not null,
sobrenome varchar (100) not null,
email varchar(50) not null,
cargo_id int not null,
data_contratacao date not null,
foreign key (cargo_id) references cargo (cargo_id)
);

insert into cargo(nome, salario, descricao)
     values ("DEV Front end",11000.00, "Trabalha na interfase"),
            ("DEV Back end",15000.00, "Trabalha nos Bastidores"),
			("DEV Full Snack",20000.00, "Trabalha em ambos");
            
select*from cargo  
where salario>=11000.00 AND salario <= 15000.00;
select*from cargo; 

        

insert into funcionarios (nome,sobrenome,email,cargo_id,data_contratacao)
values ("Ana", "Matarazzo","Luiz_zzo@gmail.com",3,"2023-12-11"),
       ("Matteo", "Thibes","Thibes_ma@gmail.com",1,"2024-08-24"),
	   ("Mary ", "Moraes","Hellen_Mary@gmail.com",2,"2020-03-04"),
       ("Maria", "Matarazzo","Maria_Mata@gmail.com",3,"2019-07-21"),
       ("Luiz", "Queiroz","lu_queiroz@gmail.com",3,"2019-08-21");
       

 select*from funcionarios
 where id = 1;
 
 select * from funcionarios
 where data_contratacao = "2024-08-24";
 
 update funcionarios
 set data_contratacao = "2024-08-25"
 where id = 2;
 
  select*from funcionarios;
  
  delete from funcionarios
  where id = 1;
  
  select*from funcionarios;
