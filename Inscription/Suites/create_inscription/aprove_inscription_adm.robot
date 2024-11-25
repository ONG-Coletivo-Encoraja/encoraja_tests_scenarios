*** Settings ***
Library    BuiltIn
Resource     ../../../Inscription/Resources/main.robot
Resource    ../../Resources/Pages/Inscription.robot
Suite Setup     Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
Suite Teardown    Fechar navegador

# Funcionalidade: "Inscrição em Evento"
# Critério de aceitação 1:
    # Como Administrador eu quero conseguir aprovar Inscrições em eventos no sistema.

*** Test Cases ***

TC001 - Administrador aprova inscrição de Beneficiário no evento ativo.
    Dado que eu esteja logado no sistema como Administrador
    E que o Administrador acesse o menu lateral Inscrições
    E filtre apenas as inscrições Pendentes
    Quando clicar no botão "Alterar status" 
    Então o sistema exibe uma caixa de PopUp para alteração de Status ou cancelamento da inscrição
    
