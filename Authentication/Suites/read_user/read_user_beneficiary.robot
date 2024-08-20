*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Visualizar usuário"
    Critério de aceitação 1:
        Como Beneficiário eu preciso Visualizar os meus dados de usuário.


*** Test Cases ***

TC001 - Beneficiário Visualiza seus dados de usuário.
    Dado que eu esteja logado no sistema como Beneficiário	
    Quando eu acessar minhas configurações
    Então o sistema deverá exibir meus dados de cadastro e login
