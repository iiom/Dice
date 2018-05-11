require_relative 'roll'
require_relative 'validator'

module Dice
  class Main

    include Validator

    attr_accessor :roll, :stack

    def initialize
    @roll = Roll.new
    end

    def check_roll                      # метод проверки условий для входа в игру и выхода из неё
      loop do                           # бесконечный цикл
          if valid? :current_bank                     # метод прерывания
          @stack += 1                   # счётчик количества ходов
          @roll.check_roll_and_rate           # обращение к методу сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
          puts "ставка игрока #{@rate} сумма на кубиках #{@summ_roll}  \nтекущий банк #{@current_bank} на #{@stack} ход"
          end
        end
      end

end
end

# a=Dice::Main.new
# a.check_roll
# p roll
