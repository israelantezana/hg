require 'juego'

describe Juego do

   before (:each) do
     @juego = Juego.new
   end

   it "deberia tener palabra ahorcado por defecto" do
	 @juego.palabra_a_adivinar.should == "ahorcado" 
   end

   it "deberia poder cambiar la palabra a adivinar" do
     @juego.set_palabra_a_adivinar "palabra"
     @juego.palabra_a_adivinar.should == "palabra" 
   end

   it "deberia responder si una letra existe en la palabra" do 
     @juego.set_palabra_a_adivinar "adivinanza"
     @juego.existe?("a").should == true 
     @juego.existe?("b").should == false
   end

   it "deberia tener 0 aciertos para un juego nuevo" do
     @juego.cantidad_aciertos.should == 0
   end

   it "deberia responder 1 si se tiene un acierto" do
     @juego.set_palabra_a_adivinar "hola"
     @juego.existe?('h')
     @juego.cantidad_aciertos.should == 1
   end

   it "deberia responder con la cantidad correcta de aciertos para la misma letra" do
     @juego.set_palabra_a_adivinar "aladino"
     @juego.existe?('a')
     @juego.existe?('l')
     @juego.existe?('d')

     @juego.cantidad_aciertos.should == 4
   end

   it "deberia detectar cuando se gana el juego" do
     @juego.set_palabra_a_adivinar "si"
     @juego.existe?('s')
     @juego.gano?.should == false	
     @juego.existe?('i')
     @juego.gano?.should == true
   end
end
