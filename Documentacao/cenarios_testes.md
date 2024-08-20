# Cenários de Teste em BDD

### CN01 - Campo 'Nome' em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário deixa o campo 'Nome' em branco e tenta salvar o formulário  
**Então** o sistema deve emitir a mensagem "Preencha este campo" ao lado do campo 'Nome'

---
### CN02 - Campo 'E-mail' em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário deixa o campo 'E-mail' em branco e tenta salvar o formulário  
**Então** o sistema deve emitir a mensagem "Preencha este campo" ao lado do campo 'E-mail'

---
### CN03 - Campo 'Telefone' em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário deixa o campo 'Telefone' em branco e tenta salvar o formulário  
**Então** o sistema deve emitir a mensagem "Preencha este campo" ao lado do campo 'Telefone'

---
### CN04 - Campo 'Data' em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário deixa o campo 'Data' em branco e tenta salvar o formulário  
**Então** o sistema deve emitir a mensagem "Preencha este campo" ao lado do campo 'Data'

---
### CN05 - Campo 'Empresa' em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário deixa o campo 'Empresa' em branco e tenta salvar o formulário  
**Então** o sistema deve exibir um modal de solicitação de preenchimento do campo obrigatório  
**E** ao clicar em 'OK', o sistema deve fechar o modal e recarregar a tela, fechando o formulário de cadastro

---

# Cenários de Exceção em BDD

### CN01 - Campo 'Nome' Preenchido com Números e Caracteres Especiais
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário preenche o campo 'Nome' com números e caracteres especiais e tenta salvar o formulário  
**Então** o sistema deve emitir uma mensagem de erro informando que o nome é inválido

---
### CN02 - Campo 'Telefone' Preenchido com Formato Inválido
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário preenche o campo 'Telefone' com um formato inválido (ex: letras ou caracteres especiais) e tenta salvar o formulário  
**Então** o sistema deve emitir uma mensagem de erro informando que o telefone é inválido

---
### CN03 - Campo 'Data' Preenchido com Data Inválida
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário preenche o campo 'Data' com uma data inválida (ex: 22/22/2000) e tenta salvar o formulário  
**Então** o sistema deve emitir uma mensagem de erro informando que a data é inválida

---
### CN04 - Seleção de Empresas com Mensagem de 'Nenhum Resultado Correspondente'
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário tenta selecionar uma empresa e o sistema exibe a mensagem de 'Nenhum resultado correspondente'  
**Então** o sistema deve permitir que o usuário selecione uma empresa válida ou exibir uma mensagem de erro apropriada

---
### CN05 - Campo 'Nome' com Campos Adicionais e Não Permitidos
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário preenche o campo 'Nome' com caracteres especiais e espaços extras e tenta salvar o formulário  
**Então** o sistema deve emitir uma mensagem de erro informando que o nome contém caracteres inválidos

---
### CN06 - Exclusão de Seleção de Empresa e Salvamento com Campo em Branco
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário seleciona uma empresa, exclui a seleção e deixa o campo 'Empresa' em branco  
**E** o usuário tenta salvar o formulário  
**Então** o sistema deve exibir uma mensagem de erro informando que o campo 'Empresa' está sem preenchimento e não deve salvar o cadastro

---
### CN07 - Modal de Edição Não Abrindo
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário clica no ícone de edição para um usuário existente  
**Então** o sistema não deve abrir nenhuma modal de edição e a tela deve permanecer estática na visão inicial

---
### CN08 - Exclusão de Usuário com Modal de Confirmação e Falha na Exclusão
**Dado** que o usuário está na página de cadastro  
**Quando** o usuário clica no ícone de lixeira para excluir um usuário  
**E** o sistema exibe um modal de alerta com a mensagem "Sucesso! Usuário deletado com sucesso"  
**Então** ao clicar em 'OK', o sistema deve fechar o modal, mas o cadastro não deve ser excluído e continuar sendo exibido na tela