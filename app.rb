require 'sinatra'
require 'juego'

get '/' do
   @@juego = Juego.new
   @cantidad_correctos = @@juego.cantidad_aciertos
   erb :bienvenida
end

post '/adivinar' do
   letra = params[:adivina]
   @@juego.existe?(letra)
   @cantidad_correctos = @@juego.cantidad_aciertos
   erb :bienvenida
end
