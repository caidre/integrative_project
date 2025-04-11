CREATE TABLE login (
    id SERIAL PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE operador (
    id SERIAL PRIMARY KEY,
    funcao VARCHAR(100),
    nome VARCHAR(150) NOT NULL
);

CREATE TABLE maquina (
    id SERIAL PRIMARY KEY,
    status VARCHAR(50),
    tipo VARCHAR(100)
);

CREATE TABLE material (
    id SERIAL PRIMARY KEY,
    tipo_peso VARCHAR(50),
    quantidade INTEGER,
    data_rec DATE
);

CREATE TABLE peca (
    id SERIAL PRIMARY KEY,
    registro VARCHAR(100),
    tipo VARCHAR(100)
);


CREATE TABLE processo (
    id SERIAL PRIMARY KEY,
    id_maquina INTEGER REFERENCES maquina(id),
    id_peca INTEGER REFERENCES peca(id),
    id_login INTEGER REFERENCES login(id),
    id_operador INTEGER REFERENCES operador(id)
);

CREATE TABLE peca_material (
    id_peca INTEGER REFERENCES peca(id),
    id_material INTEGER REFERENCES material(id),
    PRIMARY KEY (id_peca, id_material)
);