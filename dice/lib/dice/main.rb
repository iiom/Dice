require_relative 'roll'
module Dice
  class Main

    attr_reader
    attr_accessor :roll

    def initialize
    @roll = Roll.new
    end

a=Main.new
p a.roll.check_roll


end
end

# a=Main.new
# a.check_roll
# p roll
