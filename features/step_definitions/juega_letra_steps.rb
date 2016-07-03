Given(/^la palabra a adivinar es "(.*?)"$/) do |palabra|
   @@juego.set_palabra_a_adivinar palabra
end

When(/^intento adivinar con la letra "(.*?)"$/) do |letra|
  fill_in('letra', :with => letra)
  click_button("Adivinar")
end

Then(/^deberia ver el boton "(.*?)"$/) do |boton|
  last_response.should have_xpath("//input[@value=\"#{boton}\"]")
end

