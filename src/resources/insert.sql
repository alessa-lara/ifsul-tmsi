INSERT INTO habilidades (id, nome, nomeRank, requerimentos) VALUES (1, 'Ataque', 'Rank 1', 0);
INSERT INTO habilidades (id, nome, nomeRank, requerimentos) VALUES (2, 'Defesa', 'Rank 2', 0);
INSERT INTO habilidades (id, nome, nomeRank, requerimentos) VALUES (3, 'Vitalidade', 'Rank 3', 0);
INSERT INTO habilidades (id, nome, nomeRank, requerimentos) VALUES (4, 'Resistência Fogo', 'Rank 1', 0);
INSERT INTO habilidades (id, nome, nomeRank, requerimentos) VALUES (5, 'Resistência Água', 'Rank 1', 0);

INSERT INTO joias (id, nome, buff, buff_pontos, debuff, debuff_pontos) VALUES (1, 'Joia de Ataque', 1, 3, 2, -1);
INSERT INTO joias (id, nome, buff, buff_pontos, debuff, debuff_pontos) VALUES (2, 'Joia de Defesa', 2, 3, 1, -1);
INSERT INTO joias (id, nome, buff, buff_pontos, debuff, debuff_pontos) VALUES (3, 'Joia de Vitalidade', 3, 3, 2, -1);
INSERT INTO joias (id, nome, buff, buff_pontos, debuff, debuff_pontos) VALUES (4, 'Joia de Resistência Fogo', 4, 3, 5, -1);
INSERT INTO joias (id, nome, buff, buff_pontos, debuff, debuff_pontos) VALUES (5, 'Joia de Resistência Água', 5, 3, 4, -1);

INSERT INTO armaduras (id, nome, espadachim, atirador, parte, defesa, defesa_fogo, defesa_agua, defesa_gelo, defesa_raio, defesa_dragao, habilidade_1, pontos_habilidade_1, habilidade_2, pontos_habilidade_2, habilidade_3, pontos_habilidade_3, habilidade_4, pontos_habilidade_4, habilidade_5, pontos_habilidade_5, engastes) VALUES (1, 'Armadura de Couro', 1, 0, 'Peito', 10, 5, 3, 2, 1, 4, 1, 2, 2, 3, 3, 4, 4, 5, 5, 0, 3);
INSERT INTO armaduras (id, nome, espadachim, atirador, parte, defesa, defesa_fogo, defesa_agua, defesa_gelo, defesa_raio, defesa_dragao, habilidade_1, pontos_habilidade_1, habilidade_2, pontos_habilidade_2, habilidade_3, pontos_habilidade_3, habilidade_4, pontos_habilidade_4, habilidade_5, pontos_habilidade_5, engastes) VALUES (2, 'Armadura de Malha', 1, 1, 'Braços', 12, 6, 4, 3, 2, 5, 2, 3, 3, 4, 4, 5, 5, 0, 1, 2, 3);
INSERT INTO armaduras (id, nome, espadachim, atirador, parte, defesa, defesa_fogo, defesa_agua, defesa_gelo, defesa_raio, defesa_dragao, habilidade_1, pontos_habilidade_1, habilidade_2, pontos_habilidade_2, habilidade_3, pontos_habilidade_3, habilidade_4, pontos_habilidade_4, habilidade_5, pontos_habilidade_5, engastes) VALUES (3, 'Armadura de Ferro', 1, 0, 'Cabeça', 15, 7, 5, 4, 3, 6, 3, 4, 4, 5, 5, 0, 1, 1, 0, 2, 1);
INSERT INTO armaduras (id, nome, espadachim, atirador, parte, defesa, defesa_fogo, defesa_agua, defesa_gelo, defesa_raio, defesa_dragao, habilidade_1, pontos_habilidade_1, habilidade_2, pontos_habilidade_2, habilidade_3, pontos_habilidade_3, habilidade_4, pontos_habilidade_4, habilidade_5, pontos_habilidade_5, engastes) VALUES (4, 'Armadura de Bronze', 0, 1, 'Pernas', 18, 8, 6, 5, 4, 7, 4, 5, 5, 0, 1, 2, 2, 0, 3, 2, 3);
INSERT INTO armaduras (id, nome, espadachim, atirador, parte, defesa, defesa_fogo, defesa_agua, defesa_gelo, defesa_raio, defesa_dragao, habilidade_1, pontos_habilidade_1, habilidade_2, pontos_habilidade_2, habilidade_3, pontos_habilidade_3, habilidade_4, pontos_habilidade_4, habilidade_5, pontos_habilidade_5, engastes) VALUES (5, 'Armadura de Ouro', 1, 1, 'Cintura', 20, 9, 7, 6, 5, 8, 5, 1, 1, 0, 1, 2, 2, 3, 4, 4, 3);

INSERT INTO categoria_armas (id, tipo_arma, valor) VALUES (1, 'Espada', 150.50);
INSERT INTO categoria_armas (id, tipo_arma, valor) VALUES (2, 'Machado', 200.00);
INSERT INTO categoria_armas (id, tipo_arma, valor) VALUES (3, 'Lança', 180.75);
INSERT INTO categoria_armas (id, tipo_arma, valor) VALUES (4, 'Arco', 220.30);
INSERT INTO categoria_armas (id, tipo_arma, valor) VALUES (5, 'Besta', 250.10);

INSERT INTO armas (id, nome, tipoArma, raridade, elemento, dano_elemento, afinidade, ataque, ataqueReal, engastes, fio_vermelho, fio_laranja, fio_amarelo, fio_verde, fio_azul, fio_branco, fio_roxo) VALUES (1, 'Espada do Dragão', 1, 5, 'Fogo', 30, 10, 100, 120, 3, 1, 1, 1, 1, 1, 1, 0);
INSERT INTO armas (id, nome, tipoArma, raridade, elemento, dano_elemento, afinidade, ataque, ataqueReal, engastes, fio_vermelho, fio_laranja, fio_amarelo, fio_verde, fio_azul, fio_branco, fio_roxo) VALUES (2, 'Machado do Trovão', 2, 4, 'Raio', 25, 5, 90, 110, 2, 1, 1, 1, 1, 0, 0, 0);
INSERT INTO armas (id, nome, tipoArma, raridade, elemento, dano_elemento, afinidade, ataque, ataqueReal, engastes, fio_vermelho, fio_laranja, fio_amarelo, fio_verde, fio_azul, fio_branco, fio_roxo) VALUES (3, 'Lança de Gelo', 3, 3, 'Gelo', 20, 15, 80, 100, 1, 1, 1, 0, 0, 1, 1, 1);
INSERT INTO armas (id, nome, tipoArma, raridade, elemento, dano_elemento, afinidade, ataque, ataqueReal, engastes, fio_vermelho, fio_laranja, fio_amarelo, fio_verde, fio_azul, fio_branco, fio_roxo) VALUES (4, 'Arco do Vento', 4, 4, 'Vento', 15, 20, 70, 90, 1, 1, 1, 1, 1, 0, 0, 1);
INSERT INTO armas (id, nome, tipoArma, raridade, elemento, dano_elemento, afinidade, ataque, ataqueReal, engastes, fio_vermelho, fio_laranja, fio_amarelo, fio_verde, fio_azul, fio_branco, fio_roxo) VALUES (5, 'Besta de Terra', 5, 5, 'Terra', 10, 25, 60, 80, 0, 1, 1, 1, 1, 1, 1, 0);

INSERT INTO conjuntos (id, cabeca, peito, bracos, cintura, pernas, arma) VALUES (1, 3, 1, 2, 5, 4, 1);
INSERT INTO conjuntos (id, cabeca, peito, bracos, cintura, pernas, arma) VALUES (2, 1, 2, 4, 3, 5, 2);
INSERT INTO conjuntos (id, cabeca, peito, bracos, cintura, pernas, arma) VALUES (3, 4, 5, 3, 1, 2, 3);
INSERT INTO conjuntos (id, cabeca, peito, bracos, cintura, pernas, arma) VALUES (4, 5, 4, 1, 2, 3, 4);
INSERT INTO conjuntos (id, cabeca, peito, bracos, cintura, pernas, arma) VALUES (5, 2, 3, 5, 4, 1, 5);