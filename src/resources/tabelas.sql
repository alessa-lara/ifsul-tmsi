CREATE TABLE habilidades(
    id INTEGER,
    nome TEXT,
    nomeRank TEXT,
    requerimentos INTEGER,

    PRIMARY KEY (id)
);

CREATE TABLE joias(
    id INTEGER,
    nome TEXT,
    buff INTEGER,
    buff_pontos INTEGER,
    debuff INTEGER,
    debuff_pontos INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (buff) REFERENCES Habilidades(id),
    FOREIGN KEY (debuff) REFERENCES Habilidades(id)
);

CREATE TABLE armaduras(
    id INTEGER,
    nome TEXT,
    espadachim BOOL,
    atirador BOOL,
    parte TEXT,
    defesa INTEGER,
    defesa_fogo INTEGER,
    defesa_agua INTEGER,
    defesa_gelo INTEGER,
    defesa_raio INTEGER,
    defesa_dragao INTEGER,
    habilidade_1 INTEGER,
    pontos_habilidade_1 INTEGER,
    habilidade_2 INTEGER,
    pontos_habilidade_2 INTEGER,
    habilidade_3 INTEGER,
    pontos_habilidade_3 INTEGER,
    habilidade_4 INTEGER,
    pontos_habilidade_4 INTEGER,
    habilidade_5 INTEGER,
    pontos_habilidade_5 INTEGER,
    engastes INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (habilidade_1) REFERENCES Habilidades(id)
    FOREIGN KEY (habilidade_2) REFERENCES Habilidades(id)
    FOREIGN KEY (habilidade_3) REFERENCES Habilidades(id)
    FOREIGN KEY (habilidade_4) REFERENCES Habilidades(id)
    FOREIGN KEY (habilidade_5) REFERENCES Habilidades(id)
);

CREATE TABLE categoria_armas(
    id INTEGER,
    tipo_arma TEXT,
    valor REAL,

    PRIMARY KEY (id)
);

CREATE TABLE armas(
    id INTEGER,
    nome TEXT,
    tipoArma INTEGER,
    raridade INTEGER,
    elemento TEXT,
    dano_elemento INTEGER,
    afinidade INTEGER,
    ataque INTEGER,
    ataqueReal INTEGER,
    engastes INTEGER,
    fio_vermelho INTEGER,
    fio_laranja INTEGER,
    fio_amarelo INTEGER,
    fio_verde INTEGER,
    fio_azul INTEGER,
    fio_branco INTEGER,
    fio_roxo INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (tipoArma) REFERENCES CategoriaArmas(id)
);

CREATE TABLE talismas(
    id INTEGER,
    habilidade_1 INTEGER,
    pontos_habilidade_1 INTEGER,
    habilidade_2 INTEGER,
    pontos_habilidade_2 INTEGER,
    engastes INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (habilidade_1) REFERENCES Habilidades(id),
    FOREIGN KEY (habilidade_2) REFERENCES Habilidades(id)
)

CREATE TABLE conjuntos(
    id INTEGER,
    cabeca INTEGER,
    peito INTEGER,
    bracos INTEGER,
    cintura INTEGER,
    pernas INTEGER,
    arma INTEGER,
    talisma INTEGER,

    PRIMARY KEY (id),
    FOREIGN KEY (cabeca) REFERENCES Armaduras(id),
    FOREIGN KEY (peito) REFERENCES Armaduras(id),
    FOREIGN KEY (bracos) REFERENCES Armaduras(id),
    FOREIGN KEY (cintura) REFERENCES Armaduras(id),
    FOREIGN KEY (pernas) REFERENCES Armaduras(id),
    FOREIGN KEY (arma) REFERENCES Armas(id),
    FOREIGN KEY (talisma) REFERENCES Talismas(id)
)

DROP TABLE armaduras;
DROP TABLE joias;
DROP TABLE armas;
DROP TABLE categoriaArmas;
DROP TABLE habilidades;
DROP TABLE conjuntos;