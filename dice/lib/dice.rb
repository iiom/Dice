require_relative 'dice/main'

module Dice

  def self.create
    Main.new
  end
end

 gamer = Dice.create
 puts "#{gamer.roll.check_roll}"





















 # puts "ставка игрока - #{gamer.rate}"
 # puts "текущий банк -  #{gamer.current_bank}"
 # puts "всего ходов  #{gamer.stack}"
