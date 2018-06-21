require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @sentence = []
    @num.times do
      #@sentence << @phrase
      print @phrase + " "
    end
    #@sentence.join(" ")
  end

end