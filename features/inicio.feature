Feature: Iniciar juego
	Como jugador
	Quiero poder indicar los jugadores
	Para poder iniciar el juego

	Scenario: Bienvenida
	Given estoy en la pagina de inicio
	Then deberia ver "Bienvenido al tennis"

	Scenario: Ingreso nombres de jugadores
	Given estoy en la pagina de inicio
	And ingreso "Juan" como "jugador1"
	And ingreso "Pedro" como "jugador2"
	When presiono el boton "Iniciar Juego"
	Then deberia ver "Juego en progreso"
	And deberia ver " Juan - Pedro"

	Scenario: Ingreso otros nombres de jugadores
	Given estoy en la pagina de inicio
	And ingreso "Federer" como "jugador1"
	And ingreso "Nadal" como "jugador2"
	When presiono el boton "Iniciar Juego"
	Then deberia ver "Juego en progreso"
	And deberia ver " Federer - Nadal"
