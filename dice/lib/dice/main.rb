require_relative 'roll'
module Dice
  class Main

    attr_reader
    attr_accessor :roll

    def initialize
    @roll = Roll.new
    end




end
end

# a=Main.new
# a.check_roll
# p roll
