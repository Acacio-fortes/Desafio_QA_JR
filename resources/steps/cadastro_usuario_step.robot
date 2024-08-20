*** Settings ***
Documentation        Nesse arquivo são adicionados todas as variaveis dos testes
Resource    ../main.robot

*** Variables ***
${BASE_URL}          http://localhost:5400/
${logo}                 xpath=//div[@class="sc-hKwDye hclGhi"]
${BtnNovoUsu}           xpath=//button[@id="new-user"]
${ModalNovoUsu}         xpath=//form[@class='sc-eCImPb clIIUP'][contains(.,'Cadastrar novo usuário')]
${InputNome}            xpath=//input[@placeholder="Nome"]        
${inputEmail}           xpath=//input[@placeholder="Email"]
${inputDataNasc}        xpath=//input[@placeholder="Data de nascimento"]
${BtnSalvar}            xpath=//button[@type="submit"]
${BtnOkExcluir}         xpath=//button[@class="swal2-confirm swal2-styled"]
${BtnDelete}            xpath=(//img[@alt='delete'])[1]
${BtnEdit}              xpath=(//img[@alt='edit'])[1]

${LineEmpresa}          xpath=//div[@id="multiselectContainerReact"]
${Empresa02}            xpath=//div[@class='optionListContainer displayNone'][contains(.,'Empresa 1')]