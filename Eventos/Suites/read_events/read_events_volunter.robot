*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Cadastrar Eventos"
Critério de aceitação 1:
    Como Voluntário eu preciso Vizualizar Todos os eventos que eu cadastrados no sistema (pendentes, aprovados e reprovados).

*** Test Cases ***

TC001 - Voluntário Vizualiza todos os eventos.
	Dado que eu esteja logado no sistema como Voluntário
	Quando acessar o menu lateral Eventos > Todos os eventos
    Então o sistema exibe a lista de todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados)
    E permite o Voluntário Editar e Apagar eventos que ele criou ou que é o responsável
    E permite a aplicação de filtros
    E permite que o usuário efetue busca de evento por meio de qualquer um dos dados cadastrados (excessão do status)
    E permite que o usuário alterne entre as páginas
