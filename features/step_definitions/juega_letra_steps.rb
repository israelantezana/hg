Given(/^la palabra a adivinar es "(.*?)"$/) do |palabra|
   @@juego.set_palabra_a_adivinar palabra
end

Given(/^ingreso la letra "(.*?)" para adivinar$/) do |letra|
   fill_in('adivina', :with => letra)
end

When(/^presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

