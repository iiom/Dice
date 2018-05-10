require_relative 'roll'           #

module Dice
  class Main

        attr_accessor :stack            # stack-счётчик раундов

    def initialize
      @stack = 1                        # счётчик по умолчанию
    end

    def check_roll                      # метод проверки условий для входа в игру и выхода из неё
      loop do                           # бесконечный цикл
          if @current_bank <= 0         # проверка текущего банка на проигрышь и выход из цикла
          puts "Гамовер. Сушите вёсла. Бегите в банк"
          break                         # метод прерывания
        elsif
          @current_bank >= @bank*1.2    #проверка текущего банка на выйгрышь и выход из цикла
          puts "Ай красавчеге. Дай я тебя расцелую дорогой"
          break                         # метод прерывания
        else
           check_roll_and_rate          # обращение к методу сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
            puts "ставка игрока #{@rate} сумма на кубиках #{@summ_roll}  \nтекущий банк #{@current_bank} на #{@stack} ход"
            @stack += 1                 # счётчик количества ходов
          end
        end
      end
end
end
