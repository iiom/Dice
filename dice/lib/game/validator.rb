module Validator

  # def check_bet(bet)
  #   # p bet
  # # rescue NameError
  #    puts "ошибка" unless bet.instance_of?(Fixnum) 
  # end

  def check_win(user_bit, casino)
    user_bit == casino
  end

end
