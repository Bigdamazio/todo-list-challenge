# Todo List Challenge - Ruby on Rails

![GitHub repo size](https://img.shields.io/github/repo-size/Bigdamazio/todo-list-challenge?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/Bigdamazio/todo-list-challenge?style=for-the-badge)

> Esta aplicação web foi desenvolvida como desafio técnico. Trata-se de um gerenciador de listas de tarefas, permitindo a criação de múltiplas listas e múltiplos itens em cada uma delas, com suporte a Turbo Streams e frontend responsivo com TailwindCSS.

---

## ⚙️ Funcionalidades Implementadas

### ✅ Listas (`/lists`)
- Criar, visualizar e excluir listas.
- Cada lista pode conter diversos itens.

### ✅ Itens (`/items`)
- Adicionar itens a uma lista.
- Marcar ou desmarcar como concluído.
- Atualizar e excluir itens com Turbo Streams.

### ✅ Interação reativa
- Todas as ações são atualizadas dinamicamente na interface usando Turbo Streams (sem recarregar a página).

---

## 💻 Pré-requisitos

Antes de rodar o projeto, certifique-se de ter instalado:

- **Ruby 3.x**
- **Rails 7.x**
- **PostgreSQL**
- **Node.js**
- **Yarn**
- **Bundler**

---

## 🚀 Instalando e Executando o Projeto

### 1. Clone o repositório

```bash
git clone https://github.com/Bigdamazio/todo-list-challenge.git
cd todo-list-challenge
````

### 2. Instale as dependências

```bash
bundle install
yarn install
```

### 3. Configure o banco de dados

Crie o banco de dados PostgreSQL:

```bash
createdb myapp_development
```

Importe o dump SQL já pronto:

```bash
psql -U SEU_USUARIO -d myapp_development < db/dump-myapp_development.sql
```

> Substitua `SEU_USUARIO` pelo nome do seu usuário local do PostgreSQL.

### 4. Inicie o servidor

```bash
rails server
```

---

## 🔗 Endpoints Principais

* `GET /lists` - Página com todas as listas
* `POST /lists` - Criação de nova lista
* `POST /lists/:id/items` - Criação de item na lista
* `PATCH /items/:id` - Atualização de item (ex: marcar como feito)
* `DELETE /items/:id` - Remover item

---

## 🧪 Testes

Para rodar os testes automatizados com RSpec:

```bash
bundle exec rspec
```

---

## ☁️ Deploy e Hospedagem

O projeto pode ser facilmente hospedado em plataformas como:

* [Render](https://render.com)
* [Fly.io](https://fly.io)
* [Railway](https://railway.app)

### 🔁 Banco de dados online

Caso hospede o banco, você pode usar o mesmo dump SQL para importar com:

```bash
psql $DATABASE_URL < db/dump-myapp_development.sql
```

---

## 🛠️ Tecnologias Utilizadas

* Ruby on Rails 7
* PostgreSQL
* Turbo (Hotwire)
* TailwindCSS
* RSpec + FactoryBot + Capybara

---

## 📁 Estrutura do Projeto

```
app/
├── controllers/
│   ├── items_controller.rb
│   └── lists_controller.rb
├── models/
│   ├── item.rb
│   └── list.rb
├── views/
│   ├── items/
│   └── lists/
db/
├── dump-myapp_development.sql
├── migrate/
spec/
├── models/
├── requests/
├── views/
```

---

## ✅ TODO List para próximas versões

* [ ] Adicionar autenticação de usuários
* [ ] Melhorar responsividade mobile
* [ ] Adicionar paginação para listas longas
* [ ] Exportar lista como PDF
* [x] Suporte a Turbo Streams
* [x] Testes de modelo e controller
* [x] Dump de banco incluído para facilitar setup

---

> *Sinta-se à vontade para clonar, contribuir ou sugerir melhorias no repositório.*
