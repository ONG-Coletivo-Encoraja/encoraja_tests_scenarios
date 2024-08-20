*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos/Resources/main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Editar usuário"
    Critério de aceitação 1:
        Como Voluntário eu preciso Editar os meus dados de usuário.


*** Test Cases ***

TC001 - Voluntário edita seus dados de usuário.
    Dado que eu esteja logado no sistema como Voluntário	
    Quando eu acessar minhas configurações
    E alterar meus dados pessoais
    E clicar no botão Salvar
    Então o sistema deverá atualizar meus dados
