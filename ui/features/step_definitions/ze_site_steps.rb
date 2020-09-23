#Steps utilizados nos testes

Dado('que eu estou na home do site') do
    @home_page = HomePage.new #instanciando a home_page
    @home_page.carrega_url
  end

  E('que sou maior de idade') do
    @home_page.aprova_idade_modal
  end
  
  E('que acesso a área de login') do
    @home_page.acessa_area_login
  end
  
  E('preencho um email valido {string}') do |email|
    @login_page = LoginPage.new #instanciando a login_page
    @login_page.preenche_email(email)
  end
  
  E('preencho uma senha valida {string}') do |senha|
    @login_page.preenche_senha_valida(senha)
  end
  
  Quando('aciono para logar') do
    @login_page.aciona_entrar
  end
  
  Então('devo ser direcionado para a home do site logado') do
    @home_page.verifica_usuario_logado
  end

  E('preencho uma senha invalida {string}') do |senha|
    @login_page.preenche_senha_invalida(senha)
  end
  
  Então('a mensagem de erro de senha invalida deve ser apresentada') do
    @login_page.verifica_erro_senha_invalida
  end
