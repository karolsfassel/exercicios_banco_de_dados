# 📚 Banco de Dados - Exercícios

Este repositório contém os exercícios de **Banco de Dados** realizados em aula.  
Cada atividade possui um script `.SQL` com a criação das tabelas, inserção de registros e consultas solicitadas.

---

## 🎮 Atividade 01 - Games Online

**Banco de Dados:** `db_generation_game_online`  
**Objetivo:** Gerenciar informações dos personagens e suas classes em um jogo online.

### Estrutura:
- Tabela `tb_classes`
  - Pelo menos 2 atributos além da chave primária
- Tabela `tb_personagens`
  - Pelo menos 4 atributos além da chave primária
  - Foreign Key para `tb_classes`

### Requisitos:
- Inserir 5 registros em `tb_classes`
- Inserir 8 registros em `tb_personagens`
- Queries:
  - SELECT personagens com **poder de ataque > 2000**
  - SELECT personagens com **poder de defesa entre 1000 e 2000**
  - SELECT personagens com **nome contendo a letra C**
  - SELECT com **INNER JOIN** entre personagens e classes
  - SELECT com **INNER JOIN** filtrando por uma classe específica (ex.: Arqueiros)

---

## 🍕 Atividade 02 - Pizzaria

**Banco de Dados:** `db_pizzaria_legal`  
**Objetivo:** Gerenciar informações das pizzas e suas categorias.

### Estrutura:
- Tabela `tb_categorias`
  - Pelo menos 2 atributos além da chave primária
- Tabela `tb_pizzas`
  - Pelo menos 4 atributos além da chave primária
  - Foreign Key para `tb_categorias`

### Requisitos:
- Inserir 5 registros em `tb_categorias`
- Inserir 8 registros em `tb_pizzas`
- Queries:
  - SELECT pizzas com **valor > R$ 45,00**
  - SELECT pizzas com **valor entre R$ 50,00 e R$ 100,00**
  - SELECT pizzas com **nome contendo a letra M**
  - SELECT com **INNER JOIN** entre pizzas e categorias
  - SELECT com **INNER JOIN** filtrando por uma categoria específica (ex.: Doces)

---

## 💊 Atividade 03 - Farmácia

**Banco de Dados:** `db_farmacia_bem_estar`  
**Objetivo:** Gerenciar informações dos produtos e suas categorias.

### Estrutura:
- Tabela `tb_categorias`
  - Pelo menos 2 atributos além da chave primária
- Tabela `tb_produtos`
  - Pelo menos 4 atributos além da chave primária
  - Foreign Key para `tb_categorias`

### Requisitos:
- Inserir 5 registros em `tb_categorias`
- Inserir 8 registros em `tb_produtos`
- Queries:
  - SELECT produtos com **valor > R$ 50,00**
  - SELECT produtos com **valor entre R$ 5,00 e R$ 60,00**
  - SELECT produtos com **nome contendo a letra C**
  - SELECT com **INNER JOIN** entre produtos e categorias
  - SELECT com **INNER JOIN** filtrando por uma categoria específica (ex.: Cosméticos)

---

## 🚀 Organização
- Cada atividade está salva em um **script SQL** separado.
- Todos os scripts estão versionados neste repositório.
- Para executar, basta rodar os arquivos `.SQL` no seu SGBD (MySQL).
