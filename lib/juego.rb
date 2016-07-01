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
      if (@palabra_a_adivinar.include?(letra))
         @cantidad_aciertos+= 1
         true
      else
         false
      end
   end

   def cantidad_aciertos
      @cantidad_aciertos
   end
end
