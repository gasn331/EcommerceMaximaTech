-- Tabela Departamentos
CREATE TABLE Departamentos (
    Id CHAR(36) NOT NULL DEFAULT (UUID()),  -- Define UUID como padrão
    Codigo VARCHAR(10) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (Id),
    UNIQUE KEY (Codigo)
);

-- Tabela Produtos
CREATE TABLE Produtos (
    Id CHAR(36) NOT NULL DEFAULT (UUID()),  -- Define UUID como padrão
    Codigo VARCHAR(10) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    DepartamentoId CHAR(36) NOT NULL,  -- Foreign key reference to Departamentos
    Preco DECIMAL(10, 2) NOT NULL,
    Status BOOLEAN NOT NULL,  -- True for active, False for inactive
    Excluido BOOLEAN NOT NULL DEFAULT FALSE,  -- Logic deletion flag
    PRIMARY KEY (Id),
    UNIQUE KEY (Codigo),
    FOREIGN KEY (DepartamentoId) REFERENCES Departamentos(Id) ON DELETE RESTRICT
);

CREATE TABLE Autenticacao (
    Id CHAR(36) NOT NULL DEFAULT (UUID()),  -- Define UUID como padrão
    Email VARCHAR(255) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL
);