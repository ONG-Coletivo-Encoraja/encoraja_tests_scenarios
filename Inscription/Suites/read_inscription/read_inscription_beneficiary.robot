*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Visualizar Eventos"
Critério de aceitação 1:
    Como Beneficiário eu preciso Vizualizar Todos os eventos em que eu estou inscrito (aprovados).

*** Test Cases ***

TC001 - Beneficiário Vizualiza todas as suas inscrições.
	Dado que eu esteja logado no sistema como Beneficiário
	Quando acessar o menu lateral Inscrições > Minhas inscrições
    Então o sistema exibe a lista de todas as Inscrições do usuário
    E permite que o usuário cancele 
    E visualize o status dos eventos pagos
    E permite a aplicação de filtros
    E permite que o usuário alterne entre as páginas
