namespace ObjetoTabelas;

public class Habilidades {
    public int Id { get; }
    public required string Nome { get; set; }
    public required string Ranque_1 { get; set; }
    public int Requisitos_1 { get; set; }
    public required string Ranque_2 { get; set; }
    public int Requisitos_2 { get; set; }
    public required string Ranque_3 { get; set; }
    public int Requisitos_3 { get; set; }
    public required string Ranque_4 { get; set; }
    public int Requisitos_4 { get; set; }
    public required string Ranque_5 { get; set; }
    public int Requisitos_5 { get; set; }
    public required string Ranque_6 { get; set; }
    public int Requisitos_6 { get; set; }
}

public class Joias {
    public int Id { get; }
    public required string Nome { get; set; }
    public int Buff { get; set; }
    public int Buff_pontos { get; set; }
    public int Debuff { get; set; }
    public int Debuff_pontos { get; set; }
}

public class Armaduras {
    public int Id { get; }
    public required string Nome { get; set; }
    public bool Espadachim { get; set;}
    public bool Atirador { get; set;}
    public required string Parte { get; set; }
    public int Defesa { get; set; }
    public int Defesa_fogo { get; set; }
    public int Defesa_agua { get; set; }
    public int Defesa_gelo { get; set; }
    public int Defesa_raio { get; set; }
    public int Defesa_dragao { get; set; }
    public int Engastes { get; set; }
    public int Habilidade_1 { get; set; }
    public int Pontos_habilidade_1 { get; set; }
    public int Habilidade_2 { get; set; }
    public int Pontos_habilidade_2 { get; set; }
    public int Habilidade_3 { get; set; }
    public int Pontos_habilidade_3 { get; set; }
    public int Habilidade_4 { get; set; }
    public int Pontos_habilidade_4 { get; set; }
    public int Habilidade_5 { get; set; }
    public int Pontos_habilidade_5 { get; set; }
}

public class CategoriaArmas {
    public int Id { get; }
    public required string TipoArma { get; set; }
    public double Valor { get; set; }
}

public class Armas {
    public int Id { get; }
    public required string Nome { get; set; }
    public int TipoArma { get; set; }
    public int Raridade { get; set; }
    public required string Elemento { get; set; }
    public int Dano_elemento { get; set; }
    public int Afinidade { get; set; }
    public int Ataque { get; set; }
    public double Ataque_real { get; set; }
    public int Engastes { get; set; }
    public int Fio_vermelho { get; set; }
    public int Fio_laranja { get; set; }
    public int Fio_amarelo { get; set; }
    public int Fio_verde { get; set; }
    public int Fio_azul { get; set; }
    public int Fio_branco { get; set; }
    public int Fio_roxo { get; set; }
}

public class Talismas {
    public int Id { get; }
    public int Habilidade_1 { get; set; }
    public int Pontos_habilidade_1 { get; set; }
    public int Habilidade_2 { get; set; }
    public int Pontos_habilidade_2 { get; set; }
    public int Engastes { get; set; }
}

public class Conjuntos {
    public int Id { get; }
    public int Cabeca { get; set; }
    public int Peito{ get; set; }
    public int Bracos{ get; set; }
    public int Cintura{ get; set; }
    public int Pernas{ get; set; }
    public int Arma{ get; set; }
    public int Talisma{ get; set; }
}