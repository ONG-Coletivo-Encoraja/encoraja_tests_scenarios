*** Settings ***
Resource    ../../../resources/main.resource
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

*** Test Cases ***

TC001 - Beneficiário me inscrevo em um evento ativo.
	Dado que eu esteja logado no sistema como Beneficiário
	E acesse o menu lateral Inscrições > Minhas Inscrições
    Quando clicar no botão "Cancelar" 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o usuário é informado por uma mensagem de sucesso que inscrição cancelada
    E o evento é mais exibido na tela de meus eventos
    
