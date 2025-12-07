📦 Sistema de Banco de Dados de Comércio
Gestão completa de vendas, produtos e clientes usando MySQL.






🛒 Descrição do Projeto

Este projeto apresenta um banco de dados completo para um sistema de comércio, contendo:

Cadastro de clientes

Cadastro de produtos

Registro de vendas

Registro de itens da venda

Relatórios gerenciais

Procedures automáticas para facilitar operações

Foi criado com foco em estudos, portfólio e demonstração de domínio em SQL avançado, incluindo JOINs, subqueries, constraints, procedures e modelagem relacional.

🗂 Estrutura do Banco de Dados
📁 Tabelas
👤 clientes
Campo	Tipo	Descrição
id	INT	PK
nome	VARCHAR	Nome completo
email	VARCHAR	Email
telefone	VARCHAR	Contato
📦 produtos
Campo	Tipo	Descrição
id	INT	PK
nome	VARCHAR	Nome do produto
preco	DECIMAL	Preço unitário
🧾 vendas
Campo	Tipo	Descrição
id	INT	PK
cliente_id	INT	FK → clientes.id
data_venda	DATE	Data
valor_total	DECIMAL	Calculado automaticamente
📑 itens_venda
Campo	Tipo	Descrição
id	INT	PK
venda_id	INT	FK → vendas.id
produto_id	INT	FK → produtos.id
quantidade	INT	Quantidade vendida
valor_unitario	DECIMAL	Preço individual
⚙️ Funcionalidades Avançadas
🔁 Procedure automática — registrar_venda_simples

Facilita o cadastro de uma venda + item da venda em um único comando.

▶ Exemplo:
CALL registrar_venda_simples(1, 2, 1);


Parâmetros:
1️⃣ ID do cliente
2️⃣ ID do produto
3️⃣ quantidade

A procedure automaticamente:
✔ Cria a venda
✔ Insere o item
✔ Atualiza o valor_total

📊 Relatórios incluídos
🧾 Relatório completo de vendas

JOIN entre clientes + vendas + produtos + itens.

👤 Compras de um cliente específico

Filtra pelo ID do cliente.

🔝 Produto mais vendido

Agrupa por quantidade e valor gerado.

💰 Faturamento total por produto

Cálculo de receita por item.

▶️ Como importar no MySQL Workbench

Vá em Server > Data Import

Escolha Import from Self-Contained File

Selecione:

meu_banco_empresa.sql


Clique em Start Import

Pronto! Todo o sistema estará funcional.

🧪 Tecnologias utilizadas

🐬 MySQL

🖥️ MySQL Workbench

🔗 SQL Procedural

🧮 Modelagem Relacional

📊 Relatórios com JOIN / GROUP BY

📌 Demonstração visual (opcional)

Se quiser, posso criar uma imagem de capa personalizada com nome do projeto para você colocar aqui.

👨‍💻 Autor

João Bosco Ferreira
📍 Brasil
📧 coloque seu email aqui
🐙 GitHub: https://github.com/Joabosco1993
