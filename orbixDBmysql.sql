create database `obx`;
use `obx`;

CREATE TABLE doctor(
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    licenca VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE costumer(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    CPF_CNPJ VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE user_in(
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(20) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    id_cliente INT,
    id_medico INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);
CREATE TABLE scheduling(
    id_agendamento INT PRIMARY KEY AUTO_INCREMENT,
    data_dia DATETIME NOT NULL,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES user_in(id_user)
);
CREATE TABLE call_support(
    d_suporte INT PRIMARY KEY AUTO_INCREMENT,
    datachamado DATETIME NOT NULL,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES user_in(id_user)
);
CREATE TABLE consult(
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    status_consulta VARCHAR(15) NOT NULL,
    id_cliente INT,
    id_medico INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

 

 