# projeto_ze
 
Boa tarde, pessoal. 

O projeto está dividido em 3 partes:

*PARTE 1* 
Apresentacao dos fluxos críticos (arquivo Fluxos_Criticos_Ze.pptx)

*PARTE 2*
Testes automatizados de UI, o projeto está dentro do diretório ui.

Pré requisitos de instalacao:
- Ter o Ruby instalado em sua máquina. https://rubyinstaller.org/downloads/
- Chromedriver (o projeto está configurado para utilizar o diretório padrão, C:/chromedriver) https://chromedriver.chromium.org/downloads

Projeto:
O projeto basicamente está estruturado em Ruby com Cucumber e Page Objects usando SitePrism.
Resolvi escolher Ruby por ser uma linguagem bem utilizada no mercado e de fácil configuracao, os testes realizados são relacionados ao fluxo de login com usuário já cadastrado,
são cenários básicos, que podem ser bem mais explorados com um tempo maior.

Configuracao do projeto:
No console de sua IDE vá para o diretório ui do projeto e execute os seguintes comandos:
gem install bundle
bundle install

Após executar essa configuracao com sucesso os testes poderão ser executados.

Como executar os testes:
Execute os seguintes comandos no terminal:
cucumber (rodará tds os testes do projeto)
cucumber --tags='@login' (rodará tds os cenários de login)
cucumber --tags='@login-sucesso'(rodará tds os cenários de logins realizados com sucesso)

Como visualizar os Relatórios:
O próprio terminal irá demonstrar se os testes foram executados e se passaram ou náo.
Outra forma de visualizar é abrindo o html de cucumber_web_report que fica dentro do diretório ui.
Dentro da pasta log (consta o print do último passo de cada cenário executado que é sobreescrito a cada vez que roda o teste).

*PARTE 3* 

Testes automatizados API, o projeto está dentro do diretório api.

Pré requisitos de instalacao:
- Ter o Ruby instalado em sua máquina. https://rubyinstaller.org/downloads/

Projeto:
O projeto basicamente está estruturado em Ruby com HTTParty e Cucumber (confesso que não estou tao familiarizado a fazer testes de api nessa estrutura, mas resolvi fazer dessa forma para chegar mais próximo da abordagem ATDD). Costumo utilizar mais o POSTMAN como ferramenta de automacao de testes de API (em um formato sem BDD).

Configuracao do projeto:
No console de sua IDE vá para o diretório api do projeto e execute os seguintes comandos:
gem install bundle
bundle install

Após executar essa configuracao com sucesso os testes poderão ser executados.

Como executar os testes:
Execute os seguintes comandos no terminal:
cucumber (rodará tds os testes do projeto)
cucumber --tags='@api'(rodará o cenário de api)

Como visualizar os Relatórios:
O próprio terminal irá demonstrar se os testes foram executados e se passaram ou náo.
Outra forma de visualizar é abrindo o html relatorio que fica dentro do diretório reports.


