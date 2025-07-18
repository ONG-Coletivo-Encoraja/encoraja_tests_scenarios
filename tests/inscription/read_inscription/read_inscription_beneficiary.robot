*** Settings ***
Resource    ../../../resources/main.resource
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

*** Test Cases ***

TC001 - Beneficiário Vizualiza todas as suas inscrições.
	Dado que eu esteja logado no sistema como Beneficiário
	Quando acessar o menu lateral Inscrições > Minhas inscrições
    Então o sistema exibe a lista de todas as Inscrições do usuário
    E permite que o usuário cancele 
    E visualize o status dos eventos pagos
    E permite a aplicação de filtros
    E permite que o usuário alterne entre as páginas
