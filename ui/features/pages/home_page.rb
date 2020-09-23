class HomePage < SitePrism::Page

    include RSpec::Matchers

    set_url '/'

        #Mapeamento dos elementos da home do site
        element :maior_idade_btn, '#age-gate-button-yes'
        element :area_login_btn, "#welcome-button-sign-in"
        element :header_login_logado, '#header-user-badge'
        element :msg_login_sucesso, '#global-message-Sucesso'
       
    
    #Acoes    
    def carrega_url
        visit("https://ze.delivery")
    end

    def aprova_idade_modal
        maior_idade_btn.click
    end

    def acessa_area_login
        area_login_btn.click
    end

    def verifica_usuario_logado
        wait_until_msg_login_sucesso_visible    #Aguarda até que a msg de sucesso esteja visível na tela
        wait_until_header_login_logado_visible  #Aguarda até que o header de logado esteja visível na tela
        expect(page).to have_selector(:css, "#header-user-badge") #Verifica se o header logado está presente
        puts 'Cenário de Login realizado com sucesso' #mostra no console que cenario foi executado com sucesso
    end


end