require_relative 'dice'
require_relative 'validator'

class Casino
  include Validator

  def initialize
    @user_bit = user_bit
    @dice = Dice.new
    @user_bank = 50
    @win_rule = @user_bank*1.2
    @round = 1
  end

  def auto_play
    while check_user_bank(@user_bank, @win_rule) do
      user_bit = @dice.roll_dice + @dice.roll_dice #это его ставка
      casino = @dice.roll_dice + @dice.roll_dice # сам бросок казино

      if check_win(user_bit, casino)
        @user_bank += user_bit
      else
        @user_bank -= user_bit
      end

      puts "ставка игрока #{user_bit} сумма на кубиках #{casino} \nтекущий банк #{@user_bank} на #{@round} ход"

      @round += 1
    end

    if @user_bank >= @win_rule
      puts 'Победка'
    else
      puts 'Просрано'
    end
  end
end
 a = Casino.new
p a.check_user_bit(user_bit, @user_bank)
