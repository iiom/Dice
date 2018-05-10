module Dice
  class Roll

    attr_reader   :bank, :rate   #bank-установленный банк; rate-ставка игрока
    attr_accessor :summ_roll, :current_bank, :rate   # summ_roll-сумма выпавщих чисел на кубиках; current_bank-текущий банк с учетом игры;

    def initialize
      @bank = 40                      # значение банка на начало игры
      @rate = 4                         # ставка игрока
      @current_bank = @bank             #
      @stack = 1                        # счётчик по умолчанию
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
      dice1 = rand 6                      # выпадение случайного числа первого кубика
      dice2 = rand 6                      # выпадение случайного числа второго кубика
      @summ_roll = (dice1 + dice2)        # сумма выпаших чисел на 2х кубаках
    end
end
end
