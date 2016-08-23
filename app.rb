require 'sinatra'
require './lib/juego'

get '/' do
   iniciar_juego
end

post '/adivinar' do
   letra = params[:letra]
   @@juego.existe?(letra)
   @cantidad_correctos = @@juego.cantidad_aciertos
   @cantidad_fallas = @@juego.cantidad_fallas
   @mensaje_finalizacion = ''
   @puede_continuar_adivinando = ''
   if (@@juego.gano?)
      @mensaje_finalizacion = 'GANASTE!'
      @puede_continuar_adivinando = 'disabled'
   end;
   if (@@juego.pierde?)
      @mensaje_finalizacion = 'PERDISTE!'
      @puede_continuar_adivinando = 'disabled'
   end;
   erb :bienvenida
end

post '/reiniciar' do
  iniciar_juego
end

def iniciar_juego
   @@juego = Juego.new
   @cantidad_correctos = @@juego.cantidad_aciertos
   @cantidad_fallas = @@juego.cantidad_fallas
   erb :bienvenida
end
