*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Deletar Eventos"
Critério de aceitação 1:
    Como Administrador eu preciso  Excluir evento (pendentes, aprovados e reprovados) no sistema.

*** Test Cases ***

TC001 - Administrador apaga evento no site.
	Dado que eu esteja logado no sistema como Administrador
	Quando Acessar o menu lateral Eventos
    E clicar no botão Excluir evento de um evento (pendente, aprovado ou reprovado)
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o evento é deletado no sistema
    E não será mais exibido na listagem de Todos os eventos
    E não será mais exibido na listagem de Inscrições
    Mas deverá constar na tela de configurações > eventos deletados do usuário somente
    

