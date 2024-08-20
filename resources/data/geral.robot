*** Settings ***
Resource    ../main.robot
Library     ../libs/arquivo.py 
Library    RequestsLibrary


Documentation        Nessa tela é adicionada a url do site e qual navegador vou usar nos testes
*** Variables ***
${URL}         http://localhost:5400/
${BROWSER}     chrome


*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}
    ...             options=add_experimental_option("detach", True)
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser


