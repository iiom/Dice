require_relative 'game/main'
require_relative 'game/roll'

module Dice

  def self.create
    Main.new
  end
end

 gamer = Dice.create
 # p gamer
 puts "ставка игрока - #{gamer.rate}"
 puts "текущий банк -  #{gamer.current_bank}"
 puts "#{gamer.check_roll}"
 puts "всего ходов  #{gamer.stack}"
