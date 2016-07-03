class Juego

   def initialize
      @palabra_a_adivinar = "ahorcado"
      @cantidad_aciertos = 0
      @cantidad_fallas = 0
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
     if (existencias > 0) #si acert'o
       @cantidad_aciertos+= existencias
     else
       @cantidad_fallas+= 1
     end
     return (existencias > 0)
   end

   def cantidad_aciertos
      @cantidad_aciertos
   end

   def cantidad_fallas
      @cantidad_fallas
   end

   def gano?
     @cantidad_aciertos == @palabra_a_adivinar.length
   end

   def pierde?
     @cantidad_fallas == 6
   end
end
