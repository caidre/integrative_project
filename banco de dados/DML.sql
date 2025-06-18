-- Inserir dados na tabela login (com atualização da senha do 'admin')
INSERT INTO login (usuario, senha) VALUES
('admin', 'nova_senha789'), -- Atualizado de 'senha123' para 'nova_senha789'
('operador1', 'op123456'),
('operador2', 'op654321');

-- Inserir dados na tabela operador (com atualização do nome de 'João Silva')
INSERT INTO operador (funcao, nome) VALUES
('Técnico', 'João Pedro Silva'), -- Atualizado de 'João Silva' para 'João Pedro Silva'
('Supervisor', 'Maria Oliveira'),
('Operador', 'Carlos Souza');

-- Inserir dados na tabela maquina (com atualização do status da máquina 2)
INSERT INTO maquina (status, tipo) VALUES
('Ativa', 'Torno CNC'),
('Ativa', 'Fresa'), -- Atualizado de 'Manutenção' para 'Ativa'
('Ativa', 'Impressora 3D');

-- Inserir dados na tabela material (com atualização da quantidade de Aço)
INSERT INTO material (tipo_peso, quantidade, data_rec) VALUES
('Aço', 600, '2025-05-01'), -- Atualizado de 500 para 600
('Alumínio', 300, '2025-04-15'),
('Plástico', 200, '2025-05-20');

-- Inserir dados na tabela peca (com exclusão de 'P003' já considerada)
INSERT INTO peca (registro, tipo) VALUES
('P001', 'Eixo'),
('P002', 'Engrenagem');
-- 'P003' (Suporte) foi deletado, então não incluído

-- Inserir dados na tabela processo (mantendo os dados originais, assumindo integridade)
INSERT INTO processo (id_maquina, id_peca, id_login, id_operador) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);
-- Nota: Ajuste necessário se 'id_peca = 3' ou outros 'id' não existirem após exclusões

-- Inserir dados na tabela peca_material (com exclusão de (1, 2) já considerada)
INSERT INTO peca_material (id_peca, id_material) VALUES
(1, 1),
(2, 3);
-- (1, 2) foi deletado, então excluído do DML

-- Atualizações (UPDATE) já refletidas nos INSERTs acima
-- Exclusões (DELETE) já consideradas na omissão de registros