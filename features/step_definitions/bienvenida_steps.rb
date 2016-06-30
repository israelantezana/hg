Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

Then(/^deberia ver el boton de adivinar desabilitado$/) do
  #last_response.should have_xpath("//input[@name=\"adivina\"]")
  last_response.should have_xpath("//input",:name => "adivinar",:disabled => "disabled")
end



