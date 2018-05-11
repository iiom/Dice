require_relative 'dice/main'

module Dice

  def self.create
    Main.new
  end
end

 gamer = Dice.create
 puts "#{gamer.check_roll}"
