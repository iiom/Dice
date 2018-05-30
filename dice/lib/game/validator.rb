module Validator

  def check_win(user, casino) # проверка на бросок костей игрока и казино
    user == casino
  end

  def win?(user_bank, win_rule) # проверка на возможность продолжения игры (ну или проверка условия проигрыша/победы)
    if user_bank >= win_rule
      abort "Победка"
    elsif user_bank <= 0
      abort "Проигрыш"
    end
  end

  def check_bet?(current_bet, user_bank) # проверка ставки игрока на цифры/отриц значения/слова
    # abort "ошибка ввода ставки, вы хотите поставить #{@bet} ваш банка #{@bank.user_bank}" unless @bet <= @bank.user_bank# && @bet.instance_of?(Fixnum) && @bet >= 0
    current_bet.instance_of?(Fixnum) && current_bet <= user_bank && current_bet > 0
   end
end
include Validator
p win?(0, 100)
# p win?
