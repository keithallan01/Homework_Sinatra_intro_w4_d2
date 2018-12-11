require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/rps_model')
also_reload('./models/*')


get '/rpsgame/:hand1/:hand2' do
  @result = RPSGame.check_win( params[:hand1], params[:hand2])
  erb( :result )
end

get'/rpsgame/welcome' do
  erb( :welcome)
end
