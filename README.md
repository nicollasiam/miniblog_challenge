# Miniblog - Nícollas Isabel

Aplicação sugerida como desafio pela equipe do TudoGostoso - Webedia

## Configurações

* Pundit - Utilizado para autorização.

* Devise - Utilizado para autenticação.

* Kaminari - Utilizado para paginação.

* rspec-rails, rails-controller-testing e factory_girl_rails - Utilizados para teste.

* SQLite3 - Como a aplicação é pequena, foi utlizado o SQLite3.

## Instalação do Sistema
No terminal, vá até onde desejar salvar os arquivos e digite:

```bash
git clone https://github.com/nicollasiam/miniblog_challenge.git
cd miniblog_challenge

bundle install

rails db:create
rails db:migrate
```

## Inserindo dados
Para a melhor visualização, foram criados dados para popular a Database da aplicação.
No terminal, digite:

```bash
rails db:seed
```

Foram criados dois usuários principais, que estarão disponíveis após o seed (podem ser vistos no arquivo db/seed.rb):

* Usuário administrador

```ruby
admin = User.create!(email: 'admin@admin.com',
                     password: '123456',
                     admin: true)
```

* Usuário não administrador

```ruby
user = User.create!(email: 'a@a.com',
                    password: '123456')
```

## Iniciar o servidor
Após esses passos, basta iniciar o servidor. No terminal:

```bash
rails server
```

O site estará no ar, no endereço http://localhost:3000


## Testes
Também foram desenvolvidos alguns testes.
Para executá-los, basta inserir o comando:

```bash
rspec
```
