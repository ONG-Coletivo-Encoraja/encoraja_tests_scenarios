*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos/Resources/main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Fucionalidade: "Editar Eventos"
    Critério de aceitação 1:
        Como Administrador eu preciso conseguir Editar o status de inscrições pagas (aprovados, pendentes e reprovados) na tela de Todas as Inscrições.

*** Test Cases ***

TC001 - Administrador edita Status do Inscrição de Pendente para Aprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E acesse o menu lateral Inscrições > Todas as Inscrições
    Quando clicar no botão Status de uma Inscrição cadastrada como Paga
    E alterar o Status de Pendente para Aprovado
    E clicar no botão Salvar
    Então o sistema deverá exibir a inscrição com o status na listagem de Todos as inscrições para o usuário Administrador
    E deverá exibir o status na tela de minhas inscrições para o usuário vinculado a essa inscrição

TC002 - Administrador edita Status da Inscrição de Pendente para Reprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E acesse o menu lateral Inscrições > Todas as Inscrições
    Quando clicar no botão Status de uma Inscrição cadastrada como Paga
    E alterar o Status de Pendente para Reprovado
    E clicar no botão Salvar
    Então o sistema deverá exibir a inscrição com o status na listagem de Todos as inscrições para o usuário Administrador
    E deverá exibir o status na tela de minhas inscrições para o usuário vinculado a essa inscrição

TC003 - Administrador edita Status da Inscrição de Aprovado para Reprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E acesse o menu lateral Inscrições > Todas as Inscrições
    Quando clicar no botão Status de uma Inscrição cadastrada como Paga
    E alterar o Status de Aprovado para Reprovado
    E clicar no botão Salvar
    Então o sistema deverá exibir a inscrição com o status na listagem de Todos as inscrições para o usuário Administrador
    E deverá exibir o status na tela de minhas inscrições para o usuário vinculado a essa inscrição

TC004 - Administrador edita Status do Evento de Reprovado para Aprovado.
    Dado que eu esteja logado no sistema como Administrador	
    E acesse o menu lateral Inscrições > Todas as Inscrições
    Quando clicar no botão Status de uma Inscrição cadastrada como Paga
    E alterar o Status de Reprovado para Aprovado
    E clicar no botão Salvar
    Então o sistema deverá exibir a inscrição com o status na listagem de Todos as inscrições para o usuário Administrador
    E deverá exibir o status na tela de minhas inscrições para o usuário vinculado a essa inscrição