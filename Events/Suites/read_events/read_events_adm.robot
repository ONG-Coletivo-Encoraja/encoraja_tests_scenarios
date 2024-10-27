*** Settings ***
Library    BuiltIn
Resource    ../../../Events/Resources/main.robot
Suite Setup       Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Administrador
Suite Teardown    Fechar navegador

# Funcionalidade: "Visualizar Eventos"
# Critério de aceitação 1:
#     Como Administrador eu preciso Vizualiza Todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados).

*** Test Cases ***

TC001 - Administrador Vizualiza todos os eventos.
	Dado que eu esteja logado no sistema como Administrador
    Quando acessar o menu lateral Eventos > Todos os eventos
    Então o sistema exibe a lista de todos os eventos cadastrados no sistema (pendentes, aprovados e reprovados)
    E permite a visualização em tela cheia após selecionado
    # E permite a aplicação de filtros
    # E permite que o usuário efetue busca de evento por meio de qualquer um dos dados cadastrados (excessão do status)
    # E permite que o usuário alterne entre as páginas
