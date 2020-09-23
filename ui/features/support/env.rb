require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #abre navegador chrome, configuracao do chromedriver está padrao (procurando o chromedriver na C:/)
    config.default_max_wait_time = 10 #tempo máximo q a automacao espera
    Capybara.page.driver.browser.manage.window.maximize # maximiza  a janela
    #config.default_driver = :selenium_chrome_headless #roda com o navegador em background
end
