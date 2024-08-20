*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos/Resources/main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Editar usuário"
    Critério de aceitação 1:
        Como Administrador eu preciso Editar os meus dados de usuário e aprovar perfis de usuários Voluntários.

*** Test Cases ***

TC001 - Administrador edita Status da solicitação de Voluntáriado de Pendente para Aprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E tenham solicitações de Voluntáriado
    Quando eu acessar uma solicitação de Voluntáriado
    E alterar o Status de Pendente para Aprovado
    E clicar no botão Salvar
    Então o sistema deverá alterar o permissionamento do usuário
    E notificá-lo com dados do novo login

TC002 - Administrador edita Status da solicitação de Voluntáriado de Pendente para Reprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E tenham solicitações de Voluntáriado
    Quando eu acessar uma solicitação de Voluntáriado
    E alterar o Status de Pendente para Reprovado
    E clicar no botão Salvar
    Então o sistema deverá notificar o usuário sobre a reprovação
    
TC003 - Administrador edita Status da solicitação de Voluntáriado de Aprovado para Reprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E tenham solicitações de Voluntáriado
    Quando eu acessar uma solicitação de Voluntáriado
    E alterar o Status de Aprovado para Reprovado
    E clicar no botão Salvar
    Então o sistema deverá notificar o usuário sobre a reprovação

TC004 - Administrador edita seus dados de usuário.
    Dado que eu esteja logado no sistema como Administrador	
    Quando eu acessar minhas configurações
    E alterar meus dados pessoais
    E clicar no botão Salvar
    Então o sistema deverá atualizar meus dados

