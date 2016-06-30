Feature: Juego en progreso
	Como jugador
	Quiero ver el puntaje mio y de mi adversario
	Para saber el marcador

  Scenario: Juego sin puntos
	Given tengo un juego que acaba de iniciar 
	Then deberia ver "0 - 0"

  Scenario Outline: Jugador1 anota
	Given tengo un juego que acaba de iniciar
	When presiono el boton <jugador>
	Then deberia ver <resultado>

  Examples:
	|jugador|resultado|
	|"Jugador1 Anota"|"15 - 0"|
	|"Jugador1 Anota"|"30 - 0"|

  Scenario: Jugador2 anota
	Given tengo un juego que acaba de iniciar
	When presiono el boton "Jugador2 Anota"
	Then deberia ver "0 - 15"
