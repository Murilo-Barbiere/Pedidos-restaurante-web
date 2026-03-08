# 🍽️ Sistema de Pedidos

Sistema simples de gerenciamento de pedidos para restaurante desenvolvido com **Spring Boot**, **PostgreSQL** e **Docker**.

## 🚀 Funcionalidades

* Cadastro e login de usuários
* Visualização do cardápio
* Criação e gerenciamento de pedidos
* Histórico de pedidos
* Perfis de acesso: **USER** e **ADMIN**

## 🛠️ Tecnologias

* Java 21
* Spring Boot
* Spring Security
* PostgreSQL
* Flyway
* Docker
* HTML / CSS / JavaScript

## ⚙️ Como executar

### Usando Docker (recomendado)

```bash
git clone https://github.com/seu-usuario/system-pedidos.git
cd system-pedidos

docker compose up --build
```

Acesse no navegador:

http://localhost:8080

---

### Sem Docker

1. Criar banco no PostgreSQL:

```bash
createdb system_pedidos
```

2. Executar a aplicação:

```bash
mvn spring-boot:run
```

---

## 🔑 Credenciais de teste

| Tipo  | Usuário | Senha    |
| ----- | ------- | -------- |
| Admin | admin   | admin123 |

Usuários comuns podem ser criados pelo sistema.

---

## 📌 Principais endpoints

### Usuários

POST `/user/registrar` → Criar conta
POST `/user/login` → Login

### Cardápio

GET `/cardapio/exibir_cardapio` → Listar cardápio
POST `/cardapio/add_elemento_cardapio` → Adicionar item (admin)

### Pedidos

POST `/pedidos/fazer_pedido` → Criar pedido
GET `/pedidos/mostrar_pedidos` → Pedidos ativos
GET `/pedidos/mostra_historico` → Histórico
DELETE `/pedidos/pediu/{id}` → Finalizar pedido

---

## 📁 Estrutura do projeto

```
src/main/java/com/murilo_dev/system_pedidos
├── controller   # Endpoints da API
├── service      # Regras de negócio
├── repository   # Acesso ao banco
├── model        # Entidades
├── DTO          # Objetos de transferência
└── security     # Configuração de segurança
```

---

## 🐳 Docker

O projeto inclui **Dockerfile** e **docker-compose.yml**, permitindo executar toda a aplicação e o banco com um único comando.
