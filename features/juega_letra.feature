Feature: Juega adivinando una letra
	Como jugador
	Quiero poder intentar adivinar una letra
	Para ganar el juego

	Scenario: Una letra correcta
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "hola"
	And ingreso la letra "h" para adivinar
	When presiono el boton "Adivinar"
	Then deberia ver "Letras correctas: 1"

	Scenario: Una letra incorrecta
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "hola"
	And ingreso la letra "x" para adivinar
	When presiono el boton "Adivinar"
	Then deberia ver "Letras correctas: 0"

