*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Resource    ../../Resources/Pages/Create_events.robot
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
Suite Teardown    Fechar navegador


*** Test Cases ***

TC001 - Beneficiário avalia o evento finalizado que ele participou.
    Dado que eu esteja logado no sistema como Benefiário
    E que o Beneficiário acesse o menu lateral Eventos
    Quando selecionar o evento Finalizado para visualização
    E clicar no botão "Deixe aqui a sua avaliação!"
    E avaliar o evento
    Então Salvar a Avaliação