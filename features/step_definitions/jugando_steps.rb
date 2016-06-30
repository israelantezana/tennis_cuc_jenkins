Given(/^tengo un juego que acaba de iniciar$/) do
	visit '/'
    fill_in("jugador1", :with=>"Israel")
	fill_in("jugador2", :with=>"Fernando")
	click_button 'Iniciar Juego'
end


