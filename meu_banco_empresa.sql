-- =========================================
--  BANCO EM USO
-- =========================================
USE empresa;

-- =========================================
--  CONSULTAS RÁPIDAS
-- =========================================

-- Ver clientes
SELECT * FROM clientes;

-- Ver produtos
SELECT * FROM produtos;

-- Ver vendas
SELECT * FROM vendas;

-- Ver itens da venda
SELECT * FROM itens_venda;

-- =========================================
--  INSERIR CLIENTE (opcional)
--  Tire o "--" para usar
-- =========================================
-- INSERT INTO clientes (nome, email, telefone)
-- VALUES ('Nome Cliente', 'email@teste.com', '1199999-0000');

-- =========================================
--  INSERIR PRODUTOS (somente se a tabela estiver vazia)
-- =========================================
-- INSERT INTO produtos (nome, preco, estoque)
-- VALUES
-- ('Notebook Lenovo', 3500.00, 10),
-- ('Mouse Logitech', 120.50, 50),
-- ('Teclado Redragon', 199.90, 30);

-- =========================================
--  CADASTRAR UMA VENDA
--  (Somente remover "--" para ativar)
-- =========================================

-- 1. Criar venda
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (1, CURDATE(), 0);

-- 2. Ver o ID da venda criada
-- SELECT * FROM vendas;

-- 3. Adicionar itens na venda
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES 
-- (1, 1, 1, 3500.00),
-- (1, 2, 2, 120.50);

-- 4. Atualizar valor total
-- UPDATE vendas
-- SET valor_total = (
--     SELECT SUM(quantidade * valor_unitario)
--     FROM itens_venda
--     WHERE venda_id = 1
-- )
-- WHERE id = 1;

-- 5. Ver relatório completo
-- SELECT 
--     v.id AS venda_id,
--     v.data_venda,
--     c.nome AS cliente,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     v.valor_total
-- FROM vendas v
-- JOIN clientes c ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p ON p.id = i.produto_id
-- ORDER BY v.id, p.nome;
-- SELECT * FROM produtos;
-- SELECT * FROM clientes;
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (1, CURDATE(), 0);
-- SELECT * FROM vendas;
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES
-- (1, 1, 1, 3500.00),
-- (1, 2, 2, 120.50);
-- SELECT * FROM vendas;
-- UPDATE vendas
-- SET valor_total = (
--     SELECT SUM(quantidade * valor_unitario)
--     FROM itens_venda
--     WHERE venda_id = 1
-- )
-- WHERE id = 1;
-- SELECT * FROM vendas;
-- SELECT 
--     v.id AS venda_id,
--     v.data_venda,
--     c.nome AS cliente,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     v.valor_total
-- FROM vendas v
-- JOIN clientes c ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p ON p.id = i.produto_id
-- ORDER BY v.id, p.nome;
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (1, CURDATE(), 0);
-- SELECT * FROM vendas;
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES
-- (2, 1, 1, 3500.00),     -- 1 Notebook Lenovo
-- (2, 3, 2, 199.90);       -- 2 Teclado Redragon
-- UPDATE vendas
-- SET valor_total = (
--     SELECT SUM(quantidade * valor_unitario)
--     FROM itens_venda
--     WHERE venda_id = 2
-- )
-- WHERE id = 2;
-- SELECT * FROM vendas;
-- SELECT * FROM itens_venda;
-- SELECT 
--     v.id AS venda_id,
--     v.data_venda,
--     c.nome AS cliente,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     v.valor_total
-- FROM vendas v
-- JOIN clientes c ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p ON p.id = i.produto_id
-- ORDER BY v.id, p.nome;
-- SELECT 
--     c.nome AS cliente,
--     v.data_venda,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     (i.quantidade * i.valor_unitario) AS subtotal
-- FROM vendas v
-- JOIN clientes c ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p ON p.id = i.produto_id
-- WHERE c.id = 1   -- João
-- ORDER BY v.data_venda, p.nome;
-- SELECT 
--     p.nome AS produto,
--     SUM(i.quantidade) AS total_vendido,
--     SUM(i.quantidade * i.valor_unitario) AS faturamento_total
-- FROM itens_venda i
-- JOIN produtos p ON p.id = i.produto_id
-- GROUP BY p.id, p.nome
-- ORDER BY faturamento_total DESC;
-- CREATE VIEW vw_vendas_por_produto AS
-- SELECT 
--     p.nome AS produto,
--     SUM(i.quantidade) AS total_vendido,
--     SUM(i.quantidade * i.valor_unitario) AS faturamento_total
-- FROM itens_venda i
-- JOIN produtos p ON p.id = i.produto_id
-- GROUP BY p.id, p.nome
-- ORDER BY faturamento_total DESC;
-- SELECT * FROM vw_vendas_por_produto;
-- INSERT INTO clientes (nome, email, telefone)
-- VALUES 
--     ('Maria Silva', 'maria@email.com', '1198888-7777'),
--     ('Pedro Santos', 'pedro@email.com', '1197777-6666'),
--     ('Ana Oliveira', 'ana@email.com', '1196666-5555');
-- SELECT * FROM clientes;
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (5, CURDATE(), 0);
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (6, CURDATE(), 0);
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (7, CURDATE(), 0);
-- SELECT * FROM vendas ORDER BY id DESC LIMIT 3;
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (5, CURDATE(), 0);
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (6, CURDATE(), 0);
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (7, CURDATE(), 0);
-- SELECT * FROM vendas ORDER BY id DESC LIMIT 3;
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES
--     (3, 1, 1, 3500.00),
--     (3, 3, 1, 199.90);
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES
--     (4, 2, 2, 120.50),
--     (4, 3, 1, 199.90);
-- INSERT INTO vendas (cliente_id, data_venda, valor_total)
-- VALUES (5, CURDATE(), 0);
-- INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
-- VALUES
-- (5, 1, 1, 3500.00),
-- (5, 2, 2, 120.50),
-- (5, 3, 1, 199.90);
-- UPDATE vendas
-- SET valor_total = (
--     SELECT SUM(quantidade * valor_unitario)
--     FROM itens_venda
--     WHERE venda_id = 5
-- )
-- WHERE id = 5;
-- SELECT * FROM vendas WHERE id = 5;
-- RELATÓRIO COMPLETO DE VENDAS (por cliente, produto e data)
-- SELECT
--     v.id AS venda_id,
--     v.data_venda,
--     c.nome AS cliente,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     (i.quantidade * i.valor_unitario) AS subtotal,
--     v.valor_total
-- FROM vendas v
-- JOIN clientes c ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p ON p.id = i.produto_id
-- ORDER BY v.data_venda, c.nome, p.nome;
-- RELATÓRIO: tudo que o João Bosco comprou (versão usando ID)
-- SELECT
--     v.id AS venda_id,
--     v.data_venda,
--     c.nome AS cliente,
--     p.nome AS produto,
--     i.quantidade,
--     i.valor_unitario,
--     (i.quantidade * i.valor_unitario) AS subtotal,
--     v.valor_total
-- FROM vendas v
-- JOIN clientes c  ON c.id = v.cliente_id
-- JOIN itens_venda i ON i.venda_id = v.id
-- JOIN produtos p   ON p.id = i.produto_id
-- WHERE c.id = 1          -- aqui é o ID do João Bosco
-- ORDER BY v.data_venda, p.nome;
-- DELIMITER $$

-- CREATE PROCEDURE registrar_venda_simples (
--     IN p_cliente_id INT,
--     IN p_produto_id INT,
--     IN p_quantidade INT
-- )
-- BEGIN
--     DECLARE v_preco DECIMAL(10,2);
--     DECLARE v_venda_id INT;

--     -- 1) Descobrir o preço do produto
--     SELECT preco INTO v_preco
--     FROM produtos
--     WHERE id = p_produto_id;

--     -- 2) Criar a venda (valor_total começa 0)
--     INSERT INTO vendas (cliente_id, data_venda, valor_total)
--     VALUES (p_cliente_id, CURDATE(), 0);

--     SET v_venda_id = LAST_INSERT_ID();

--     -- 3) Criar o item da venda
--     INSERT INTO itens_venda (venda_id, produto_id, quantidade, valor_unitario)
--     VALUES (v_venda_id, p_produto_id, p_quantidade, v_preco);

--     -- 4) Atualizar o valor_total da venda
--     UPDATE vendas
--     SET valor_total = (
--         SELECT SUM(i.quantidade * i.valor_unitario)
--         FROM itens_venda i
--         WHERE i.venda_id = v_venda_id
--     )
--     WHERE id = v_venda_id;
-- END $$

-- DELIMITER ;
-- CALL registrar_venda_simples(1, 1, 2);
-- SELECT * FROM vendas ORDER BY id DESC;
SELECT * FROM itens_venda WHERE venda_id = 7;
CALL registrar_venda_simples(1, 1, 2);











