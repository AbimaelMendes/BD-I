-- Inserção de clientes
insert into cliente (cpf, nome, telefone) values
(1111111111, 'Ana Silva', 1199999999),
(2222222222, 'Bruno Lima', 2198888888),
(3333333333, 'Carla Souza', 3197777777),
(4444444444, 'Daniel Rocha', 4196666666),
(5555555555, 'Elaine Costa', 5195555555),
(6666666666, 'Fernando Alves', 6194444444),
(7777777777, 'Gustavo Martins', 7193333333),
(8888888888, 'Helena Ramos', 8192222222),
(9999999999, 'Igor Nunes', 9191111111),
(1010101010, 'Juliana Castro', 1190000000);

-- Inserção de usuários
insert into usuario (email, cpf, nome, senha, cargo) values
('ana@email.com', 1111111111, 'Ana Silva', '1234', 'Gerente'),
('bruno@email.com', 2222222222, 'Bruno Lima', 'abcd', 'Atendente'),
('carla@email.com', 3333333333, 'Carla Souza', 'pass1', 'Supervisor'),
('daniel@email.com', 4444444444, 'Daniel Rocha', 'senha123', 'Caixa'),
('elaine@email.com', 5555555555, 'Elaine Costa', 'teste', 'Atendente'),
('fernando@email.com', 6666666666, 'Fernando Alves', 'qwer', 'Técnico'),
('gustavo@email.com', 7777777777, 'Gustavo Martins', 'asdf', 'Gerente'),
('helena@email.com', 8888888888, 'Helena Ramos', 'zxcv', 'Técnico'),
('igor@email.com', 9999999999, 'Igor Nunes', 'senha', 'Caixa'),
('juliana@email.com', 1010101010, 'Juliana Castro', 'admin', 'Supervisor');

-- Inserção de marcas
insert into marca (id, nome) values
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Puma'),
(4, 'Reebok'),
(5, 'Vans'),
(6, 'Converse'),
(7, 'Asics'),
(8, 'Fila'),
(9, 'Mizuno'),
(10, 'New Balance');

-- Inserção de tipos
insert into tipo (id, nome) values
(1, 'Tênis'),
(2, 'Bota'),
(3, 'Sapatênis'),
(4, 'Sandália'),
(5, 'Chinelo'),
(6, 'Salto'),
(7, 'Mocassim'),
(8, 'Social'),
(9, 'Corrida'),
(10, 'Casual');

-- Inserção de produtos
insert into produto (id, cor, descricao, marca_id, tipo_id) values
(1, 'Preto', 'Tênis esportivo', 1, 1),
(2, 'Branco', 'Tênis casual', 2, 10),
(3, 'Azul', 'Bota de couro', 3, 2),
(4, 'Vermelho', 'Sandália feminina', 4, 4),
(5, 'Marrom', 'Mocassim elegante', 5, 7),
(6, 'Cinza', 'Tênis corrida', 6, 9),
(7, 'Bege', 'Salto alto', 7, 6),
(8, 'Verde', 'Chinelo praia', 8, 5),
(9, 'Rosa', 'Sapatênis moderno', 9, 3),
(10, 'Preto', 'Sapato social', 10, 8);

-- Inserção de ordens de serviço
insert into ordem_servico (id, descricao, data_entrega, valor, cliente_cpf, usuario_email, status, tipo_servico) values
(1, 'Troca de sola', '2025-07-20', 50.00, 1111111111, 'ana@email.com', 'Em andamento', 'Reparo'),
(2, 'Limpeza profunda', '2025-07-21', 30.00, 2222222222, 'bruno@email.com', 'Concluído', 'Limpeza'),
(3, 'Costura lateral', '2025-07-22', 45.00, 3333333333, 'carla@email.com', 'Em andamento', 'Reparo'),
(4, 'Pintura de couro', '2025-07-23', 60.00, 4444444444, 'daniel@email.com', 'Concluído', 'Personalização'),
(5, 'Colagem de sola', '2025-07-24', 40.00, 5555555555, 'elaine@email.com', 'Pendente', 'Reparo'),
(6, 'Ajuste de tamanho', '2025-07-25', 70.00, 6666666666, 'fernando@email.com', 'Concluído', 'Ajuste'),
(7, 'Troca de cadarço', '2025-07-26', 20.00, 7777777777, 'gustavo@email.com', 'Pendente', 'Troca'),
(8, 'Impermeabilização', '2025-07-27', 35.00, 8888888888, 'helena@email.com', 'Concluído', 'Proteção'),
(9, 'Limpeza de sola', '2025-07-28', 25.00, 9999999999, 'igor@email.com', 'Pendente', 'Limpeza'),
(10, 'Reparo total', '2025-07-29', 80.00, 1010101010, 'juliana@email.com', 'Em andamento', 'Reparo');

-- Inserção em ordem_produto (15 registros)
insert into ordem_produto (ordem_id, produto_id) values
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 1),
(10, 2),
(3, 4),
(5, 6),
(7, 8);
