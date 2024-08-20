*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Visualizar usuário"
    Critério de aceitação 1:
        Como Administrador eu preciso Visualizar os meus dados de usuário.


*** Test Cases ***

TC001 - Administrador Visualiza seus dados de usuário.
    Dado que eu esteja logado no sistema como Administrador	
    Quando eu acessar minhas configurações
    Então o sistema deverá exibir meus dados de cadastro e login

TC001 - Administrador Visualiza os dados de usuário quando houverem candidaturas para Voluntáriado.
    Dado que eu esteja logado no sistema como Administrador
    E existam solicitações de Voluntáriado
    Quando eu a tela principal do site
    Então o sistema deverá exibir os dados cadastrais de solicitação para Voluntáriado