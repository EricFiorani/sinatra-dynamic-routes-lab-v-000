require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @sum = params[:number].to_i * params[:number].to_i
    "#{@sum}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number_phrase = @phrase * @number
    "#{@number_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params[:word1] + params[:word2] + params[:word3] + params[:word4] +
    params[:word5]
    "#{@phrase}."
  end
end
