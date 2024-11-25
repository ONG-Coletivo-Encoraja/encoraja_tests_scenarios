*** Settings ***
Library    BuiltIn
Resource     ../../../Inscription\Resources\main.robot
Test Setup       Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Voluntário
Test Teardown    Fechar navegador

# Funcionalidade: "Inscrição em Evento"
# Critério de aceitação 1:
#     Como Voluntário eu quero conseguir me Inscrever em eventos (aprovados/ativos) no sistema.

*** Test Cases ***

TC001 - Voluntário me inscrevo em um evento ativo.
	Dado que eu esteja logado no sistema como Voluntário
# 	E acesse o menu lateral Eventos > Todos os Eventos
#     Quando clicar no botão "Me Inscrever" de um evento Ativo
#     Então o sistema exibe uma mensagem de confirmação
#     E após confirmada o usuário é informado por uma mensagem de sucesso que inscrição foi aplicada
    
# TC002 - Voluntário me inscrevo em um evento inativo.
# 	Dado que eu esteja logado no sistema como Voluntário
# 	Quando Acessar o menu lateral Eventos > Todos os Eventos
#     Então o sistema não deve exibir o botão "Me Inscrever" para um evento inativo


# TC003 - Voluntário me inscrevo em um evento reprovado.
# 	Dado que eu esteja logado no sistema como Voluntário
# 	Quando Acessar o menu lateral Eventos > Todos os Eventos
#     Então o sistema não deve exibir o botão "Me Inscrever" para um evento reprovado