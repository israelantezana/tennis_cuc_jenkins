require 'sinatra'
require './lib/tennis_scorer.rb'

configure do
  #enable :sessions
   @@scorer = TennisScorer.new()
end

get '/' do
   erb :inicio
end

post '/jugar' do
   @jugador1 = params[:jugador1]
   @jugador2 = params[:jugador2]
   @score = @@scorer.score
   erb :jugando
end

post '/jugar1' do
  @jugador1 = ''
  @jugador2 = ''
  @@scorer.jugador1_anota
  @score = @@scorer.score
  erb :jugando
end

post '/jugar2' do
  @jugador1 = ''
  @jugador2 = ''
  @@scorer.jugador2_anota
  @score = @@scorer.score
  erb :jugando
end
