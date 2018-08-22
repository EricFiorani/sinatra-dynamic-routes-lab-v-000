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
    @number_phrase = params[:number].to_i.times do
      params[:phrase]
    end
    "#{@number_phrase}"
  end
end
