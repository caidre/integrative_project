-- 1. Listar todos os usuários do sistema (tabela login)
SELECT id, usuario, senha FROM login;

-- 2. Consultar todos os operadores com suas funções (tabela operador)
SELECT id, nome, funcao FROM operador;

-- 3. Verificar o status e tipo de todas as máquinas (tabela maquina)
SELECT id, status, tipo FROM maquina;

-- 4. Listar materiais com quantidade e data de recebimento (tabela material)
SELECT id, tipo_peso, quantidade, data_rec FROM material;

-- 5. Consultar todas as peças registradas (tabela peca)
SELECT id, registro, tipo FROM peca;

-- 6. Listar processos com informações de máquina, peça, login e operador (tabela processo)
SELECT p.id, m.tipo AS maquina, pc.registro AS peca, l.usuario, o.nome AS operador
FROM processo p
JOIN maquina m ON p.id_maquina = m.id
JOIN peca pc ON p.id_peca = pc.id
JOIN login l ON p.id_login = l.id
JOIN operador o ON p.id_operador = o.id;

-- 7. Consultar associações entre peças e materiais (tabela peca_material)

SELECT pm.id_peca, p.registro AS peca, pm.id_material, m.tipo_peso AS material
FROM peca_material pm
JOIN peca p ON pm.id_peca = p.id
JOIN material m ON pm.id_material = m.id;