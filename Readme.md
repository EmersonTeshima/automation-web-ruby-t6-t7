<h1 align="center">Automation web Ruby</h1>

<h2 align="center">Projeto de autamação web utilizando Ruby + Cucumber.</h2>



## Descrição do Projeto

<p align="center">🚀 Projeto da Aula de QA, no módulo de Automação com Ruby + Cucumber, ministrada pelo professor William Alves da Silva, CEO do Projeto Qa.Coders. Este projeto visa abrir a home page https://www.qacoders.com.br, tirar print, da primeira página onde tem a descrição "Aprenda na prática" e validar, bem como em seguida, abrir cada item do menu, "Sobre nós, Depoimentos, Parceiros e Fale Conosco", com respectivos "prints" e validações. Sendo armazenado em relátorios no arquivo reports. </p>

<h1 align="center"><a href="https://www.qacoders.com.br/">Qa.Coders</a></h1>


### Pré-requisitos e instruções para rodar o código:
<img height="15" width="25" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg"/> [Ruby](https://rubyinstaller.org/downloads/) - Instalar a versão recomendada marcada por => da sessão <b>WITH DEVKIT</b>           
           
- [Chromedriver](https://chromedriver.storage.googleapis.com/index.html) - Instalar a mesma versão do Google Chrome em C:\Windows\System32, configurando o ambiente de variáveis

- Instalar Cucumber pelo comando : gem install cucumber e iniciando pelo comando: Cucumber --init 

- Criar pastas dentro da pasta features:

pages<br/>
specs (specs: onde vai estar as especificações do projeto)<br/>

reports (onde ficam as capturas de tela)<br/>

- Dentro da pasta .gitignore:<br/>
*.log<br/>
reports<br/>
gemfile.lock<br/>

- Inserir os arquivos de depêndencias abaixo na pasta gemfile:

source 'https://rubygems.org/'<br/>
gem 'capybara'<br/>
gem 'chromedriver-helper'<br/>
gem 'cucumber'<br/>
gem 'rspec'<br/>
gem 'selenium-webdriver'<br/>
gem 'site_prism'<br/>
gem 'pry'<br/>

- Inserir os requerimentos abaixo, na pasta env.rb:

require 'capybara/cucumber'<br/>
require 'capybara/rspec'<br/>
require 'selenium-webdriver'<br/>
require 'site_prism'<br/>
require 'pry'<br/>


- Rodar o comando no terminal: bundler install (para instalar dependências necessárias)

- Inserir o código abaixo na pasta env.rb:

Capybara.configure do |config|<br/>
    config.default_driver = :selenium_chrome<br/>
    config.app_host = "http://www.google.com.br"<br/>
    config.default_max_wait_time = 10<br/>
end<br/>

- E por fim o comando para rodar o código:

bundler exec cucumber<br/>





<span>                     
<img height="25" width="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" />
<img height="25" width="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/cucumber/cucumber-plain.svg" />
<img height="25" width="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rspec/rspec-original.svg" />
</span>
          
          
                   
          
