*** Settings ***
Library    BuiltIn
Resource     ../../../Events/Resources/main.robot
Suite Setup       Acessar o Site Web ONG Coletivo Encoraja e logar com o usuário Benefiário
Suite Teardown    Fechar navegador

# Funcionalidade: "Visualizar Eventos"
# Critério de aceitação 1:
#     Como Beneficiário eu preciso Vizualizar Todos os eventos que eu cadastrados no sistema (aprovados).

*** Test Cases ***

TC001 - Beneficiário Vizualiza todos os eventos aprovados.
	Dado que eu esteja logado no sistema como Benefiário
	Quando acessar o menu lateral Eventos > Todos os eventos
    # Então o sistema exibe a lista de todos os eventos cadastrados no sistema (aprovados)
    # E permite o Beneficiário se inscrever em eventos
    # E permite a aplicação de filtros
    # E permite que o usuário efetue busca de evento por meio de qualquer um dos dados cadastrados (excessão do status)
    # E permite que o usuário alterne entre as páginas
