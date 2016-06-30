Given(/^estoy en la pagina de inicio$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Given(/^ingreso "(.*?)" como "(.*?)"$/) do |nombre, campo|
   fill_in(campo, :with => nombre)
end

When(/^presiono el boton "(.*?)"$/) do |boton|
   click_button(boton)
end

