# require_relative 'roll'           #
module Dice
class Roll

  attr_reader   :bank, :rate   #bank-установленный банк; rate-ставка игрока
  attr_accessor :summ_roll, :current_bank, :stack # summ_roll-сумма выпавщих чисел на кубиках; current_bank-текущий банк с учетом игры; stack-счётчик раундов

  def initialize
    @bank = 40                      # значение банка на начало игры
    @rate = 4                         # ставка игрока
    @current_bank = @bank             #
    @stack = 0                        # счётчик по умолчанию
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
        @stack += 1                   # счётчик количества ходов
        check_roll_and_rate           # обращение к методу сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
        puts "ставка игрока #{@rate} сумма на кубиках #{@summ_roll}  \nтекущий банк #{@current_bank} на #{@stack} ход"
        end
      end
    end

def check_roll_and_rate               # метод сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
  if roll_dice == @rate               # сравнение суммы выпавших чисел со ставкой игрока
    sum_current_bank                  # обращение к методу увеличения банка при удачном сравнении
    puts "Совпадение"
  else
    razn_current_bank                 # обращение к методу уменьшения банка при удачном сравнении
    puts "Мимо"
  end
end

def sum_current_bank                  # метод увеличения банка при удачном сравнении
  @current_bank += @rate              # к текущему банку прибаляется ставка игрока
end

def razn_current_bank                 # метод уменьшения банка при удачном сравнении
  @current_bank -= @rate              # у текущего банка вычитается ставка игрока
end

def roll_dice
  dice1 = rand 1..6                      # выпадение случайного числа первого кубика
  dice2 = rand 1..6                      # выпадение случайного числа второго кубика
  @summ_roll = (dice1 + dice2)        # сумма выпаших чисел на 2х кубаках
end

end
end
# roll_the_dice = Dice.new
# puts "ставка игрока - #{roll_the_dice.rate}"
# puts "текущий банк -  #{roll_the_dice.current_bank}"
# puts "#{roll_the_dice.check_roll}"
# puts "всего ходов  #{roll_the_dice.stack}"
