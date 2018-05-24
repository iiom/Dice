require_relative 'dice'
require_relative 'validator'

class Casino
  include Validator

  attr_accessor :user_bit, :round, :win_rule, :current_user_bank

  def initialize
    @current_user_bank = 0
    @dice     = Dice.new
    @win_rule = 0
    @round    = 0
    @bet      = 0
    @stats    = 0
    @result_bet = 0
  end


  def game_dice
     if current_user_bank >= @win_rule
       abort "Победка"
     elsif current_user_bank == 0
       abort "Проигрыш"
     else
       check_bet
        player = @dice.roll_dice + @dice.roll_dice
        casino = @dice.roll_dice + @dice.roll_dice

        check_win(player, casino) ? result_win : result_loos

        @round += 1
      end
    end

  def bet (bet)
    @bet = bet
    # p "Ставка игрока #{bet}"
  end

  def check_bet
    abort "ошибка ввода ставки, вы хотите поставить #{@bet} ваш банка #{current_user_bank}" unless @bet.instance_of?(Fixnum) && @bet <= current_user_bank
    # abort "ошибка ввода ставки"
    # end
  end

  def result_win
    # p "совпало"
    @current_user_bank += @bet
    @result_bet +=@bet
  end

  def result_loos
    # p "не совпало"
    @current_user_bank -= @bet
    @result_bet -= @bet
  end

  def win_rule (win_rule)
    @win_rule = (win_rule * 1.1).to_i
    @current_user_bank = win_rule
    # p "условия победки #{@win_rule}"
  end

  def stats
    puts "Текущий банк => #{current_user_bank} Ставка => #{@bet} текущий раунд => #{@round} проиграл/выйграл => #{@result_bet} "
  end
end
