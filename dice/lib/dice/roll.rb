module Dice
  class Roll
    attr_accessor :summ_roll, :current_bank, :bank, :rate # summ_roll-сумма выпавщих чисел на кубиках; current_bank-текущий банк с учетом игры; stack-счётчик раундов

    def initialize
      @rate = 4
      @bank = 40
      @current_bank = @bank
    end

    def check_roll_and_rate
      if @summ_roll == @rate
        sum_current_bank!
        puts "Совпадение"
      else
        razn_current_bank!
        puts "Мимо"
      end
    end

    def roll_dice
      dice1 = rand 1..6
      dice2 = rand 1..6
      @summ_roll = (dice1 + dice2)
    end

    def sum_current_bank!
      @current_bank += @rate
    end

    def razn_current_bank!
      @current_bank -= @rate
    end

  end
end
