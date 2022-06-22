Before do |scenario|
    Capybara.current_session.driver.manager.delete_all_cookies
    page.driver.quit
end

after do |scenario|
    scenario_:name = scenario.name.gsub(/\s+/, '_').tr('/','_')
    
    if scenario.failed?
        pritn_screen(scenario_name.downcase!, 'Failed')
    else
        pritn_screen(scenario_name.downcase!, 'Sucess')
    end
end


