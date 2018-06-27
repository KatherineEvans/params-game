class ParamsGameController < ApplicationController
  
  def params_game_model
    @hello = "Hello, welcome to the world's worst game!"
    user_input = params["name"] 
    @name = "Your name is #{user_input.upcase}"
    
    if user_input.chars.first == "a"
      @output = "Hey, your name starts with the first letter of the alphabet!"
      puts @output 
    else 
      puts @output = "Boring name...."
    end
    
    @game_message = "Enter a number between 1-100, see if you can guess correctly!"
    user_input2 = params["num"]
    correct_num = 27

    if user_input2.to_i == correct_num.to_i
      @game = "You guessed correctly!"
      puts @game
    elsif user_input2.to_i < correct_num.to_i
      @game = "Your guess is too low!"
      puts @game
    else user_input2.to_i > correct_num.to_i
      @game = "Your guess is too high!"
      puts @game
    end

    render "params_game_model.json.jbuilder"
  end

end
