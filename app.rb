require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    re = @name.each(&:reverse!)
    "#{@name}"
  end
end
