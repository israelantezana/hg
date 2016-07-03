require 'sinatra'
require './lib/juego'

get '/' do
   @@juego = Juego.new
   @cantidad_correctos = @@juego.cantidad_aciertos
   @cantidad_fallas = @@juego.cantidad_fallas
   erb :bienvenida
end

post '/adivinar' do
   letra = params[:adivina]
   @@juego.existe?(letra)
   @cantidad_correctos = @@juego.cantidad_aciertos
   @cantidad_fallas = @@juego.cantidad_fallas
   @mensaje_finalizacion = ''
   @puede_continuar_adivinando = ''
   if (@@juego.gano?)
      @mensaje_finalizacion = 'GANASTE!'
      @puede_continuar_adivinando = 'disabled'
   end;
   erb :bienvenida
end
