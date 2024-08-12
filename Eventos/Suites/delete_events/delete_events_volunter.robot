*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Deletar Eventos"
Critério de aceitação 1:
    Como Voluntário eu preciso  Excluir evento (pendentes, aprovados e reprovados) no sistema.

*** Test Cases ***

TC001 - Voluntário apaga evento no site.
	Dado que eu esteja logado no sistema como Voluntário
	Quando Acessar o menu lateral Eventos
    E clicar no botão Excluir evento de um evento (pendente, aprovado ou reprovado) que ele seja o responsável
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o evento é deletado no sistema
    E não será mais exibido na listagem de Todos os eventos para todos os usuários
    E não será mais exibido na listagem de Inscrições
    Mas deverá constar na tela de configurações > eventos deletados do usuário somente
