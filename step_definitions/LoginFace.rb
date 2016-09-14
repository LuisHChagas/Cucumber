Dado(/^que eu esteja na página incial do Facebook$/) do
# Abrindo o Chrome
@navegador = Selenium::WebDriver.for :chrome
@navegador.manage.window.maximize
@navegador.manage.timeouts.implicit_wait = 5

# Acessando a página do Facebook
@navegador.get "https://www.facebook.com/"
end

Dado(/^que eu tenha informado o email$/) do
  # Preenchendo o email
campoLogin = @navegador.find_element(:name => "email")
campoLogin.send_keys("email@seuemail.com.br")
end

Dado(/^que eu tenha informado a senha$/) do
  #Preenchendo a senha
campoSenha = @navegador[:name => "pass"]
campoSenha.send_keys("suasenha")
end

Quando(/^eu clico em Entrar$/) do
  @navegador[:css => ".uiButton.uiButtonConfirm"].click
end

Então(/^eu vejo a pagina com meu nome no topo$/) do
  validaUsuario = @navegador.find_element(:class => "_2s25")

  logadoUsuario = validaUsuario.text
  expect(logadoUsuario).to eq("Seu nome")
end
