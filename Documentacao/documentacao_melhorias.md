# Documentação de Melhorias

## Melhoria 1: Cadastro de Menores de Idade
**Descrição:**  
Verificar se o sistema permite o cadastro de pessoas menores de idade.

**Objetivo:**  
Garantir que o sistema bloqueie o cadastro de menores de idade ou que informe claramente as restrições de idade.

**Passos Propostos:**
1. Adicionar uma validação de idade no formulário de cadastro.
2. Implementar uma mensagem de erro ou restrição quando a idade informada for menor que o permitido.

---

## Melhoria 2: Comportamento do Modal de Preenchimento do Campo 'Empresa'
**Descrição:**  
Atualmente, ao clicar no modal de 'OK' de alerta para o preenchimento do campo 'Empresa', o sistema faz um reload na tela e fecha o modal.

**Objetivo:**  
O modal de alerta deve permanecer aberto para que o usuário possa corrigir o preenchimento sem perder os dados já inseridos no formulário.

**Passos Propostos:**
1. Ajustar o comportamento do modal para que não recarregue a tela ao clicar em 'OK'.
2. Garantir que o modal permaneça aberto para correção dos campos obrigatórios.

---

## Melhoria 3: Adicionar Coluna de 'Ações'
**Descrição:**  
Adicionar uma coluna de 'Ações' na visualização da lista de usuários onde serão localizados os ícones de 'edição' e 'exclusão'.

**Objetivo:**  
Facilitar o acesso às ações de edição e exclusão para uma gestão mais eficiente dos registros.

**Passos Propostos:**
1. Implementar uma coluna adicional na lista de usuários.
2. Adicionar ícones de edição e exclusão na nova coluna.

---

## Melhoria 4: Indicação de Campos Obrigatórios
**Descrição:**  
Os campos obrigatórios no formulário de cadastro não estão sinalizados adequadamente.

**Objetivo:**  
Melhorar a usabilidade do formulário destacando claramente quais campos são obrigatórios.

**Passos Propostos:**
1. Adicionar um asterisco (*) ao lado dos rótulos dos campos obrigatórios.
2. Garantir que todos os campos obrigatórios estejam claramente indicados.

---

## Melhoria 5: Validação de Campos Obrigatórios

**Descrição:**  
Atualmente, o sistema valida os campos obrigatórios um por um. Ao salvar o formulário com campos obrigatórios não preenchidos, o sistema só sinaliza um campo por vez.

**Objetivo:**  
Implementar uma validação que exiba uma mensagem para todos os campos obrigatórios não preenchidos ao mesmo tempo.

**Passos Propostos:**
1. Alterar a validação para que todos os campos obrigatórios não preenchidos sejam verificados de uma vez.
2. Exibir uma mensagem consolidada informando todos os campos que precisam ser preenchidos.

---

## Melhoria 6: Comportamento da Aba de Seleção de Empresa

**Descrição:**  
Quando uma empresa é selecionada, a aba de seleção não fecha, o que impede o usuário de clicar no botão de 'Salvar'.

**Objetivo:**  
Melhorar a usabilidade permitindo que a aba de seleção se feche automaticamente após a escolha da empresa, permitindo o salvamento do formulário.

**Passos Propostos:**
1. Implementar a funcionalidade para fechar a aba de seleção após a escolha de uma empresa.
2. Garantir que o botão de 'Salvar' esteja disponível após a seleção.

---

## Melhoria 7: Mensagem ao Selecionar Três Empresas

**Descrição:**  
Ao selecionar três empresas para um único usuário, o sistema exibe a mensagem 'Nenhum resultado correspondente'.

**Objetivo:**  
Corrigir a lógica de seleção para permitir a escolha de múltiplas empresas sem erros.

**Passos Propostos:**
1. Revisar a lógica de validação da seleção de empresas.
2. Ajustar o sistema para suportar a seleção de várias empresas sem exibir mensagens de erro inadequadas.