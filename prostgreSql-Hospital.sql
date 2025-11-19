CREATE TABLE Especialidade (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Medico (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150),
    ativo BOOLEAN NOT NULL,
    especialidade_id INT NOT NULL,
    FOREIGN KEY (especialidade_id) REFERENCES Especialidade(id)
);

CREATE TABLE Hospital (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    endereco VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Paciente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    sexo sexo_enum NOT NULL,
    telefone VARCHAR(20),
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    altura NUMERIC(4,2) NOT NULL,
    peso NUMERIC(5,2) NOT NULL
);
Se quiser, posso atualizar todo o ba








);

CREATE TABLE Consulta (
    id SERIAL PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE MedicoHospital (
    medico_id INT NOT NULL,
    hospital_id INT NOT NULL,
    PRIMARY KEY (medico_id, hospital_id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id),
    FOREIGN KEY (hospital_id) REFERENCES Hospital(id)
);
