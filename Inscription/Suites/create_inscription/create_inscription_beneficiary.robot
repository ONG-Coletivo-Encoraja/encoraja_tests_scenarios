*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Inscrição em Evento"
Critério de aceitação 1:
    Como Beneficiário eu quero conseguir me Inscrever em eventos (aprovados/ativos) no sistema.

*** Test Cases ***

TC001 - Beneficiário me inscrevo em um evento ativo.
	Dado que eu esteja logado no sistema como Beneficiário
	E acesse o menu lateral Eventos > Todos os Eventos
    Quando clicar no botão "Me Inscrever" 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o usuário é informado por uma mensagem de sucesso que inscrição foi aplicada
    
