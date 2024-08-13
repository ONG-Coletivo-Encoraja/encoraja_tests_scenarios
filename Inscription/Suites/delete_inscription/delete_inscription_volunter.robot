*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Deletar inscrição em Meus eventos"
Critério de aceitação 1:
    Como Voluntário eu quero conseguir canacelar minhas Inscrições em eventos (aprovados/ativos) na tela de Minhas Inscrições.

*** Test Cases ***

TC001 - Voluntário me inscrevo em um evento ativo.
	Dado que eu esteja logado no sistema como Voluntário
	E acesse o menu lateral Inscrições > Minhas Inscrições
    Quando clicar no botão "Cancelar" 
    Então o sistema exibe uma mensagem de confirmação
    E após confirmada o usuário é informado por uma mensagem de sucesso que inscrição cancelada
    E o evento é mais exibido na tela de meus eventos
    
    
