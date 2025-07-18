*** Settings ***
Resource    ../../../resources/main.resource
Suite Setup    Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Suite Teardown    Fechar navegador

*** Test Cases ***

# TC001 - Voluntário preenche lista de presença do evento
#     Dado que eu esteja logado no sistema como Voluntário  
#     E acesse o menu lateral Eventos
#     Quando selecionar o evento para visualização 
#     E clicar no botão "Ver inscritos"
