class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
    
    element :title_Aprenda_Na_Pratica, 'div[class="title"]'
    element :btn_Sobre_Nos, 'a[href="/#sobre-nos"]'
    element :btn_Depoimentos, 'a[href="/#depoimentos"]'
    element :btn_Parceiros, 'a[href="/#parceiros"]'
    element :btn_Fale_Conosco, 'a[href="/#faleConosco"]'

    set_url '/'

    def validate_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end

    def validate_text_home(text_home_feature)        
        el_title_HomePage = find('div[class="title"')
    end
    
    def validate_text_menu_sobreNos(sobre_nos)
        if sobre_nos == "Sobre nós"
            title_Sobre_Nos = find('#sobre-nos > div.MuiBox-root.css-1ln06le > h3')
        end
    end 

    def validate_text_menu_depoimentos(depoimentos)
        if depoimentos == "Depoimentos"        
            el_title_Depoimentos = find('div[class="title"]')
        end
    end 

    def validate_text_menu_parceiros(parceiros)
        if parceiros == "Parceiros"
            title_Parceiros = find('#parceiros > h3')
        end
    end

    def validate_text_menu_faleConosco(faleConosco)
        if faleConosco == "Fale Conosco"
            title_FaleConosco = find('#faleConosco > div.MuiBox-root.css-1ln06le > h3')
        end
    end 
    
end