class LoginPage < SitePrism::Page

    include RSpec::Matchers

    set_url '/'

    #Mapeamento dos elementos da página de login
    element :email_field, '#login-mail-input-email'
    element :senha_field, '#login-mail-input-password'
    element :entrar_btn, '#login-mail-button-sign-in'

    #Acoes
    def preenche_email(stringEmail)
        email_field.send_keys(stringEmail)
    end

    def preenche_senha_valida(stringSenha)
        senha_field.send_keys(stringSenha)
    end

    def preenche_senha_invalida(stringSenha)
        senha_field.send_keys(stringSenha)
    end

    def aciona_entrar
        entrar_btn.click
    end

    def verifica_erro_senha_invalida
        expect(page).to have_content "Senha inválida" #Verifica se Senha inválida é apresentada na tela 
        puts 'Cenário de senha inválida realizado com sucesso' #mostra no console que cenario foi executado com sucesso
    end

end