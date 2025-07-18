*** Settings ***
Resource    ../../../resources/main.resource
Suite Setup     Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
Suite Teardown    Fechar navegador

*** Test Cases ***

TC001 - Administrador aprova inscrição de Beneficiário no evento ativo.
    Dado que eu esteja logado no sistema como Administrador
    E que o Administrador acesse o menu lateral Inscrições
    E filtre apenas as inscrições Pendentes
    Quando clicar no botão "Alterar status" 
    Então o sistema exibe uma caixa de PopUp para alteração de Status ou cancelamento da inscrição
    
