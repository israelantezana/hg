class Juego

   def initialize
      @palabra_a_adivinar = "ahorcado"
      @cantidad_aciertos = 0
   end
   def palabra_a_adivinar 
      @palabra_a_adivinar
   end

   def set_palabra_a_adivinar(palabra)
      @palabra_a_adivinar = palabra
   end

   def existe?(letra)
     existencias = 0
     @palabra_a_adivinar.each_char do |l| 
		if (letra == l) 
		  existencias+= 1
    	end
     end
     @cantidad_aciertos+= existencias
     return (existencias > 0)
   end

   def cantidad_aciertos
      @cantidad_aciertos
   end
end
