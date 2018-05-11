module Dice
class Roll

  # include Validator

  attr_accessor :summ_roll, :current_bank, :bank, :rate # summ_roll-сумма выпавщих чисел на кубиках; current_bank-текущий банк с учетом игры; stack-счётчик раундов

  def initialize
    @rate = 4
    @bank = 40
    @current_bank = @bank                         # ставка игрока
  end


def check_roll_and_rate               # метод сравнения ставки игрока и суммы выпавших чисел на 2х кубиках
  if @summ_roll == @rate               # сравнение суммы выпавших чисел со ставкой игрока
    sum_current_bank                  # обращение к методу увеличения банка при удачном сравнении
    puts "Совпадение"
  else
    razn_current_bank                 # обращение к методу уменьшения банка при удачном сравнении
    puts "Мимо"
  end
  end

end

def roll_dice
  dice1 = rand 1..6                      # выпадение случайного числа первого кубика
  dice2 = rand 1..6                      # выпадение случайного числа второго кубика
  @summ_roll = (dice1 + dice2)        # сумма выпаших чисел на 2х кубаках
end

def sum_current_bank                  # метод увеличения банка при удачном сравнении
  @current_bank += @rate              # к текущему банку прибаляется ставка игрока
  end

  def razn_current_bank                 # метод уменьшения банка при удачном сравнении
  @current_bank -= @rate              # у текущего банка вычитается ставка игрока
  end

end


end
end
# a=Dice::Roll.new
#
#
# puts a.roll_dice
# p a.rate
# puts a.check_roll_and_rate
# p a.current_bank
# p dice1
