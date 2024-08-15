*** Settings ***
Library    BuiltIn
Resource     ../../../../Eventos\Resources\main.robot
Test Setup       Acessar o site do Coletivo encoraja e logar
Test Teardown    Fechar navegador

Funcionalidade: "Deletar usuário"
Critério de aceitação 1:
    Como usuário Administrador eu preciso conseguir me Deletar/Inativar usuários do sistema.

*** Test Cases ***

TC001 - Usuário Administrador inativa usuário cadastraso no site.
	Dado que eu esteja logado como usuário Administrador
	E acesse o menu lateral Todos os usuários
    E visualizo todos os usuários cadastrados no site
    Quando clicar no botão "Inativar usuário" 
    E confirmar a mensagem de confirmação da inativação
    Então o sistema altera o status do usuário, bloqueando futuros acessos no site até que seja novamente reativado
    

