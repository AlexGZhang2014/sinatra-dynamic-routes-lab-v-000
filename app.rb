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
      @sentence << @phrase
    end
    @sentence.join(" ")
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = []
    params.each_value {|word| @sentence << word}
    @sentence.join(" ") + "."
  end
  
  

end