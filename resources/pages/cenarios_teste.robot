*** Settings ***
Resource    ../main.robot
Documentation        Nesse arquivo são adicionados todas as keywords dos testes
Library    FakerLibrary

*** Keywords ***    


DADO QUE o usuario acesse o site
    Go To    url=${URL}
     
QUANDO a tela home for exibida
    Wait Until Element Is Visible    ${logo}    25
    
ENTÃO o sistema deverar exibir o botao de 'Novo usuario'
    Wait Until Element Is Visible    ${BtnNovoUsu}     25

Quando clicar no botão 'Novo usuario'
    Click Element    ${BtnNovoUsu}

Então o sistema deverá abrir um modal de cadastro
    Wait Until Element Is Visible    ${ModalNovoUsu} 

E preencho os campos obrigatorios
    Wait Until Element Is Visible    ${InputNome}     25
    Click Element    ${LineEmpresa}
    Press Keys    none         DOWN
    Press Keys    none         ENTER
    
    #Cria nome fake
    ${nome}         FakerLibrary.First Name
    Click Element    ${InputNome}  
    Input Text       ${InputNome}      ${nome}

    #Gera email fake
    ${emailAleatorio}        FakerLibrary.Email   

    Click Element    ${inputEmail}
    Input Text      ${inputEmail}    ${emailAleatorio}
    ${input_value}=    Get Value    ${inputEmail}
    Set Global Variable    ${input_value} 
    Click Element    ${inputDataNasc}
    Input Text       ${inputDataNasc}        25/05/1992


E clicar no botao de salvar
    Click Element    ${BtnSalvar}  
Entao o sistema deverá cadastrar o novo usuario
    Sleep    25
    Page Should Contain     ${input_value}

E deixar um campo obrigatorio sem preenchimento
    Wait Until Element Is Visible    ${InputNome}     25
    Click Element    ${LineEmpresa}
    Press Keys    none         DOWN
    Press Keys    none         ENTER

    #Gera email fake
    ${emailAleatorio}        FakerLibrary.Email

    Click Element    ${inputEmail}
    Input Text      ${inputEmail}    ${emailAleatorio}
    ${input_value}=    Get Value    ${inputEmail}
    Set Global Variable    ${input_value} 
    Click Element    ${inputDataNasc}
    Input Text       ${inputDataNasc}        25/05/1992

Entao o sistema deverá exibir uma mensagem de campo obrigatorio
    ${alert_text}=     Handle Alert    23
    Should Be Equal As Strings    ${alert_text}    Preencha este campo.
    Log To Console                ${alert_text} 

Quando clicar no botão 'excluir'
    Wait Until Element Is Visible    ${BtnDelete}    35
    Click Element    ${BtnDelete}
Então o sistema emitirá uma mensagem de sucesso
    Wait Until Element Is Visible    ${BtnOkExcluir}        35
    Page Should Contain    Usuário deletado com sucesso!

E Clicar no botão de 'OK' do modal de cancelamento
    Wait Until Element Is Visible    ${BtnOkExcluir}       35
    Click Element    ${BtnOkExcluir} 

Então o sistema fechara o modal e exibirá a tela inicial
    Wait Until Element Is Visible    ${BtnNovoUsu}     25


Quando o site for carregado, a tela exibirá o botão de 'Novo usuário'
    Wait Until Element Is Visible    ${BtnNovoUsu}     25

Então será possivel visualizar as colunas de 'Nome, Email, Telefone, Nascimento, Cidade e Empresas'
    Page Should Contain    Nome
    Page Should Contain    Email
    Page Should Contain    Telefone
    Page Should Contain    Nascimento
    Page Should Contain    Cidade
    Page Should Contain    Empresas

E os botões de 'Editar e Cancelar'
    Wait Until Element Is Visible    ${BtnDelete}    35
    Wait Until Element Is Visible    ${BtnEdit}          35
