module Validator

  # def check_bet(bet)
  #   # p bet
  # # rescue NameError
  #    puts "ошибка" unless bet.instance_of?(Fixnum)
  # end

  def check_win(user_bit, casino)
    user_bit == casino
  end

  def check_bet
    abort "ошибка ввода ставки, вы хотите поставить #{@bet} ваш банка #{@bank.user_bank}" unless @bet.instance_of?(Fixnum) && @bet <= @bank.user_bank
  end

end
