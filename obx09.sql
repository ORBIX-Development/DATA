create database obx;
USE obx;

create table usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    senha varchar(40) NOT NULL,
    email varchar(40) NOT NULL,
    cargo enum('cliente','medico','pendente'),
    cod_doc varchar(40)
);

create table atendimento(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    datachamado DATETIME NOT NULL,
    status_atendimento enum('pendente','em adamento','finalizado'),
    descricao varchar(255) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id) 
    
);

CREATE TABLE agendamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_dia DATETIME NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);


CREATE TABLE consulta(
    id INT PRIMARY KEY AUTO_INCREMENT,
    status_consulta enum('não-realizada','realizada'),
    id_medico INT,
	foreign key (id_medico) references usuario(id),
    id_cliente INT,
	foreign key (id_cliente) references usuario(id)
);

