*** Settings ***
Library     SeleniumLibrary
Documentation        Nessa tela são adicionadas todas as comunicações do projeto, ela possui acesso a todas as camadas.
# Ela é importante para não precisar das suites ficar importando as pages e resources

### Data ###
Resource    data/geral.robot
Resource    data/registro.robot

### Pages ###
Resource    pages/cenarios_teste.robot
Resource    steps/cadastro_usuario_step.robot