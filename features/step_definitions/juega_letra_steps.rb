Given(/^la palabra a adivinar es "(.*?)"$/) do |palabra|
   @@juego.set_palabra_a_adivinar palabra
end

When(/^intento adivinar con la letra "(.*?)"$/) do |letra|
  fill_in('adivina', :with => letra)
  click_button("Adivinar")
end


