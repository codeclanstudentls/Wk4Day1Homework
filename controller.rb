require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

 get '/game/:rock/:paper/:scissors' do
  return "#{params[:rock]} beats #{params[:scissors]} but loses to #{params[:paper]}"
end

 get '/rock/:rock' do
    rock = params[:rock]
    paper = params[:paper]
    game = Game.new(rock,paper)
    result = game.rock()
   return "{result}"
 end