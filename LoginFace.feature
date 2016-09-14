#Define a linguagem
# language: pt

#Descreve o motivo dessa historia existir
Funcionalidade: Tela de Login
	Como usuário devidamente cadastrado
	Quero informar login e senha
	Para entrar no facebook com sucesso

#Descreve o comportamento
  Cenário: Login com sucesso

#Descreve a pré condição do cenário para que seja executado
      Dado que eu esteja na página incial do Facebook
         E que eu tenha informado o "login"
         E que eu tenha informado a "senha"

#Descreve a ação que será executado
    Quando eu clico no botão "Entrar"

#Descreve o Resultado esperado do cenário
    Então eu vejo a pagina com meu nome no topo
