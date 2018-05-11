require_relative 'roll'
require_relative 'validator'

module Dice
  class Main

    include Validator

    attr_accessor :roll, :stack

    def initialize
    @roll = Roll.new
    @stack = 0
    end

    def check_roll
      loop do
        if valid? :current_bank
           @stack += 1
          @roll.check_roll_and_rate
          puts "ставка игрока #{@roll.rate} сумма на кубиках #{@roll.roll_dice}  \nтекущий банк #{@roll.current_bank} на #{@stack} ход"
        else
          puts error
          break
          end
        end
      end

end
end
