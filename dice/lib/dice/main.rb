require_relative 'roll'           #

module Dice
  class Main

    attr_accessor :stack                  # stack-счётчик раундов

    def initialize
      @roll = Roll.new
      @stack = 1                          # счётчик по умолчанию
    end

    def check_roll                        # метод проверки условий для входа в игру и выхода из неё
      loop do                             # бесконечный цикл
          if @current_bank <= 0           # проверка текущего банка на проигрышь и выход из цикла
            puts "Гамовер. Сушите вёсла. Бегите в банк"
            break                         # метод прерывания
        elsif
            @current_bank >= @bank*1.2    #проверка текущего банка на выйгрышь и выход из цикла
            puts "Ай красавчеге. Дай я тебя расцелую дорогой"
            break                         # метод прерывания
        else
            @stack +=                     # счётчик количества ходов
            @roll.check_roll_and_rate           # обращение к методу сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
            puts "ставка игрока #{@roll.rate} сумма на кубиках #{@roll.summ_roll}  \nтекущий банк #{@roll.current_bank} на #{@stack} ход"
          end
        end
      end
end
end
