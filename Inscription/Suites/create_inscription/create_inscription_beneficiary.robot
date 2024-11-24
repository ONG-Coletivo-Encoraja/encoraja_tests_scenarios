*** Settings ***
Library    BuiltIn
Resource     ../../../Inscription/Resources/main.robot
Resource    ../../Resources/Pages/Inscription.robot
Suite Setup     Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
Suite Teardown    Fechar navegador

# Funcionalidade: "Inscrição em Evento"
# Critério de aceitação 1:
    # Como Beneficiário eu quero conseguir me Inscrever em eventos (aprovados/ativos) no sistema.

*** Test Cases ***

TC001 - Beneficiário me inscrevo em um evento ativo.
    Dado que eu esteja logado no sistema como Benefiário
    E que o Beneficiário acesse o menu lateral Eventos
    E selecionar o novo evento criado
    Quando clicar no botão "Me Inscrever" 
    Então o sistema exibe uma mensagem de confirmação que após confirmada inscrição é efetuada com sucesso
    
