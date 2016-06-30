Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end


