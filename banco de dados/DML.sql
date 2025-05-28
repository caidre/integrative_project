--INSERT
-- Inserir dados na tabela login
INSERT INTO login (usuario, senha) VALUES
('admin', 'senha123'),
('operador1', 'op123456'),
('operador2', 'op654321');

-- Inserir dados na tabela operador
INSERT INTO operador (funcao, nome) VALUES
('Técnico', 'João Silva'),
('Supervisor', 'Maria Oliveira'),
('Operador', 'Carlos Souza');

-- Inserir dados na tabela maquina
INSERT INTO maquina (status, tipo) VALUES
('Ativa', 'Torno CNC'),
('Manutenção', 'Fresa'),
('Ativa', 'Impressora 3D');

-- Inserir dados na tabela material
INSERT INTO material (tipo_peso, quantidade, data_rec) VALUES
('Aço', 500, '2025-05-01'),
('Alumínio', 300, '2025-04-15'),
('Plástico', 200, '2025-05-20');

-- Inserir dados na tabela peca
INSERT INTO peca (registro, tipo) VALUES
('P001', 'Eixo'),
('P002', 'Engrenagem'),
('P003', 'Suporte');

-- Inserir dados na tabela processo
INSERT INTO processo (id_maquina, id_peca, id_login, id_operador) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3);

-- Inserir dados na tabela peca_material
INSERT INTO peca_material (id_peca, id_material) VALUES
(1, 1),
(1, 2),
(2, 3);

--UPDATE
-- Atualizar a senha de um usuário na tabela login
UPDATE login
SET senha = 'nova_senha789'
WHERE usuario = 'admin';

-- Atualizar o status de uma máquina
UPDATE maquina
SET status = 'Ativa'
WHERE id = 2;

-- Atualizar a quantidade de um material
UPDATE material
SET quantidade = 600
WHERE id = 1;

-- Atualizar o nome de um operador
UPDATE operador
SET nome = 'João Pedro Silva'
WHERE id = 1;

--DELETE
-- Deletar um registro da tabela peca_material
DELETE FROM peca_material
WHERE id_peca = 1 AND id_material = 2;

-- Deletar uma peça específica
DELETE FROM peca
WHERE registro = 'P003';

-- Deletar um material com quantidade zero
DELETE FROM material
WHERE quantidade = 0;

-- Deletar um login específico
DELETE FROM login
WHERE usuario = 'operador2';
