*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Visualizar Inscrições"
Critério de aceitação 1:
    Como Administrador eu preciso Vizualiza Todas as Inscrições cadastrados no sistema (pendentes, aprovados e reprovados).

*** Test Cases ***

TC001 - Administrador Vizualiza todas as Inscrições.
	Dado que eu esteja logado no sistema como Administrador
	Quando acessar o menu lateral Inscrições > Todas as Inscrições
    Então o sistema exibe a lista de todas as Inscrições cadastrados no sistema (pendentes, aprovados e reprovados)
    E permite o Administrador aprovar ou reprovar inscrições pagas
    E permite que o usuário alterne entre as páginas
    E permite que o usuário filtre as imformações
