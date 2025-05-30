-- TABLE
CREATE TABLE agendamento(
    id_agendamento INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATETIME NOT NULL,
    id_user INTEGER,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);
CREATE TABLE call_suporte(
    id_suporte INTEGER PRIMARY KEY AUTOINCREMENT,
    datachamado DATETIME NOT NULL,
    id_user INTEGER,
    FOREIGN KEY (id_user) REFERENCES user(id_user)
);
CREATE TABLE cliente(
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    CPF_CNPJ VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE consulta(
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    status_consulta VARCHAR(15) NOT NULL,
    id_cliente INTEGER,
    id_medico INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);
CREATE TABLE medico(
    id_medico INTEGER PRIMARY KEY AUTOINCREMENT,
    licenca VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL
);
CREATE TABLE user(
    id_user INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(20) NOT NULL,
    senha VARCHAR(15) NOT NULL,
    id_cliente INTEGER,
    id_medico INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
