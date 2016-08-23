Feature: iniciar_juego

Scenario: Muestra Pista cantidad de letras
  Given estoy en la pagina de inicio
  Then deberia ver "Palabra con cantidad de letras: "


Scenario: Inicia con una palabra al azar
    Given estoy en la pagina de inicio
    And la palabra de inicio al azar es "hola"
    #Then deberia ver "Palabra con cantidad de letras: 4"
