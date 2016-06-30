Feature: Bienvenida
	Como jugador	
	Quiero ser bien recibido por el juego
	Para poder empezar a jugar con buen animo

	Scenario: Hola Ahorcado
	Given estoy en la pagina de inicio
	Then deberia ver "Bienvenido al juego Ahorcado"


	Scenario: Informacion del juego
	Given estoy en la pagina de inicio
	Then deberia ver "Letras correctas: 0"
	And deberia ver "Intentos fallidos: 0"

