require_relative 'config/environment'

class App < Sinatra::Base
    get '/reversename/:name' do 
      @name = params[:name].reverse!
      @name
    end
    get '/square/:number' do 
      @num = params[:number].to_i ** 2
      "#{@num}"
    end
    get '/say/:number/:phrase' do 
      @number = params[:number].to_i
      @phrase = params[:phrase] 
      "#{@phrase}" * @number
    end 
    get '/say/:work1/:work2/:work3/:work4/:work5' do 
      @w1 = params[:work1]
      @w2 = params[:work2]
      @w3 = params[:work3]
      @w4 = params[:work4]
      @w5 = params[:work5]
      "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
    end

    get '/:operation/:number1/:number2' do 
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      if @operation == 'add'
        "#{@num1 + @num2}"
      elsif @operation == 'subtract'
        "#{@num1 - @num2}"
      elsif @operation == 'multiply'
        "#{@num1 * @num2}"
      elsif @operation == 'divide'
        "#{@num1 / @num2}"
      end
    end



     
      

end