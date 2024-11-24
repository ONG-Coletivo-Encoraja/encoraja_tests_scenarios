*** Settings ***
Library    BuiltIn
Resource     ../../../Inscription/Resources/main.robot
Resource    ../../Resources/Pages/Inscription.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Suite Teardown    Fechar navegador

*** Test Cases ***

TC001 - Voluntário preenche lista de presença do evento
    Dado que eu esteja logado no sistema como Voluntário
    E acesse o menu lateral Eventos 2
    Quando selecionar o evento para visualização de inscrições
    E clicar no botão "Ver inscritos"
    E selecionar a checkbox de presença
    Então clicar em Salvar
    
