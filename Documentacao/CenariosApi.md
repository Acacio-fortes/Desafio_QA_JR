Claro! Aqui estão os cenários de teste de API em Gherkin em português:

### Cenários de Teste em Gherkin

#### 1. Rota Home

```gherkin
Feature: Rota Home

  Scenario: Acessar a rota home
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve ser '{"msg": "home"}'
```

#### 2. Rotas de Usuário

**Obter Todos os Usuários**

```gherkin
Feature: Obter Todos os Usuários

  Scenario: Recuperar todos os usuários
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/user"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve ser uma lista de usuários
```

**Obter Usuário por ID**

```gherkin
Feature: Obter Usuário por ID

  Scenario: Recuperar um usuário por ID válido
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/user/{id}" com id "123"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter dados do usuário para id "123"

  Scenario: Recuperar um usuário por ID inválido
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/user/{id}" com id "inválido"
    Então o código de status da resposta deve ser 400
```

**Criar Usuário**

```gherkin
Feature: Criar Usuário

  Scenario: Criar um novo usuário com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação POST para "/api/user/create" com o seguinte corpo:
      """
      {
        "name": "João da Silva",
        "e-mail": "joao.silva@exemplo.com",
        "companies": ["Empresa1"]
      }
      """
    Então o código de status da resposta deve ser 201
    E o corpo da resposta deve conter os dados do usuário criado

  Scenario: Falha ao criar um usuário com campos ausentes
    Dado que a API está em execução
    Quando eu enviar uma solicitação POST para "/api/user/create" com o seguinte corpo:
      """
      {
        "name": "",
        "e-mail": "joao.silva@exemplo.com",
        "companies": ["Empresa1"]
      }
      """
    Então o código de status da resposta deve ser 400
```

**Atualizar Usuário**

```gherkin
Feature: Atualizar Usuário

  Scenario: Atualizar um usuário com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação PATCH para "/api/user/{id}/update" com id "123" e o seguinte corpo:
      """
      {
        "name": "João da Silva Atualizado",
        "e-mail": "joao.silva.atualizado@exemplo.com",
        "companies": ["Empresa1", "Empresa2"]
      }
      """
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter os dados do usuário atualizado

  Scenario: Falha ao atualizar um usuário com dados inválidos
    Dado que a API está em execução
    Quando eu enviar uma solicitação PATCH para "/api/user/{id}/update" com id "123" e o seguinte corpo:
      """
      {
        "name": "",
        "e-mail": "joao.silva.atualizado@exemplo.com",
        "companies": ["Empresa1", "Empresa2"]
      }
      """
    Então o código de status da resposta deve ser 400
```

**Excluir Usuário**

```gherkin
Feature: Excluir Usuário

  Scenario: Excluir um usuário com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação DELETE para "/api/user/{id}/delete" com id "123"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter uma confirmação de exclusão

  Scenario: Falha ao excluir um usuário com ID inválido
    Dado que a API está em execução
    Quando eu enviar uma solicitação DELETE para "/api/user/{id}/delete" com id "inválido"
    Então o código de status da resposta deve ser 400
```

#### 3. Rotas de Empresa

**Obter Todas as Empresas**

```gherkin
Feature: Obter Todas as Empresas

  Scenario: Recuperar todas as empresas
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/company"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve ser uma lista de empresas
```

**Obter Empresa por ID**

```gherkin
Feature: Obter Empresa por ID

  Scenario: Recuperar uma empresa por ID válido
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/company/{id}" com id "44"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter dados da empresa para id "44"

  Scenario: Recuperar uma empresa por ID inválido
    Dado que a API está em execução
    Quando eu enviar uma solicitação GET para "/api/company/{id}" com id "inválido"
    Então o código de status da resposta deve ser 400
```

**Criar Empresa**

```gherkin
Feature: Criar Empresa

  Scenario: Criar uma nova empresa com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação POST para "/api/company/create" com o seguinte corpo:
      """
      {
        "name": "Nova Empresa",
        "cnpj": "12345678000195",
        "adress": {
          "cep": "12345-678",
          "country": "País",
          "city": "Cidade",
          "street_location": "Rua",
          "number": "123",
          "district": "Bairro"
        }
      }
      """
    Então o código de status da resposta deve ser 201
    E o corpo da resposta deve conter os dados da empresa criada

  Scenario: Falha ao criar uma empresa com campos ausentes
    Dado que a API está em execução
    Quando eu enviar uma solicitação POST para "/api/company/create" com o seguinte corpo:
      """
      {
        "name": "",
        "cnpj": "12345678000195",
        "adress": {
          "cep": "12345-678",
          "country": "País",
          "city": "Cidade",
          "street_location": "Rua",
          "number": "123",
          "district": "Bairro"
        }
      }
      """
    Então o código de status da resposta deve ser 400
```

**Atualizar Empresa**

```gherkin
Feature: Atualizar Empresa

  Scenario: Atualizar uma empresa com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação PATCH para "/api/company/{id}/update" com id "44" e o seguinte corpo:
      """
      {
        "name": "Empresa Atualizada",
        "cnpj": "12345678000195",
        "adress": {
          "cep": "12345-678",
          "country": "País",
          "state": "Estado",
          "city": "Cidade",
          "street": "Rua",
          "number": "123",
          "district": "Bairro"
        }
      }
      """
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter os dados da empresa atualizada

  Scenario: Falha ao atualizar uma empresa com dados inválidos
    Dado que a API está em execução
    Quando eu enviar uma solicitação PATCH para "/api/company/{id}/update" com id "44" e o seguinte corpo:
      """
      {
        "name": "",
        "cnpj": "12345678000195",
        "adress": {
          "cep": "12345-678",
          "country": "País",
          "state": "Estado",
          "city": "Cidade",
          "street": "Rua",
          "number": "123",
          "district": "Bairro"
        }
      }
      """
    Então o código de status da resposta deve ser 400
```

**Excluir Empresa**

```gherkin
Feature: Excluir Empresa

  Scenario: Excluir uma empresa com sucesso
    Dado que a API está em execução
    Quando eu enviar uma solicitação DELETE para "/api/company/{id}/delete" com id "44"
    Então o código de status da resposta deve ser 200
    E o corpo da resposta deve conter uma confirmação de exclusão

  Scenario: Falha ao excluir uma empresa com ID inválido
    Dado que a API está em execução
    Quando eu enviar uma solicitação DELETE para "/api/company/{id}/delete" com id "inválido"
    Então o código de status da resposta deve ser 400
```

### Exportação para Postman ou Insomnia

Para exportar as rotas da API para Postman ou Insomnia:

1. **Postman**:
   - Crie uma nova coleção no Postman.
   - Adicione cada endpoint da API como uma nova requisição dentro dessa coleção.
