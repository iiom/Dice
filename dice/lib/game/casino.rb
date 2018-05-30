require_relative 'dice'
require_relative 'validator'
require_relative 'bank'

class Casino
  include Validator

  attr_accessor :user_bit, :round, :win_rule, :bank

  def initialize
    @bank       = Bank.new   # создаётся объект класса банк в котором хранится банк игрока
    @dice       = Dice.new   # объект класса кости
    @win_rule   = 0          # условия победки
    @round      = 0          # счётчик раундов
    @bet        = 0          # ставка игрока
    @stats      = 0          # вывод статистики
    @result_bet = 0          # расчёт выйгрыша или проигрыша каждого раунда
    @result     = :lose
  end

  def game_dice
    # проверяем на отрицательные знаечния и больше или меньше ставка от банка
    if check_bet?(@bet, @bank.user_bank)
    # кидаем кубики - можем себе позволить
      player = @dice.roll_dice + @dice.roll_dice
      casino = @dice.roll_dice + @dice.roll_dice

      check_win(player, casino) ? result_win : result_loos

      @round += 1
    end

    # и тут проверка выиграл дядя или проиграл
    win?(@bank.user_bank, @win_rule) #??????????????????????????????????????
  end

  def bet(bet)
    # Вот тут было вот так if check_bet? (bet, @bank.user_bank), он пытался сравнивать check_bet? и (bet, @bank.user_bank)
    if check_bet?(bet, @bank.user_bank)
      @bet = bet
    elsif
      p 'eshke'
    end
  end

    def result_win
      # p "совпало"
      @bank.user_bank += @bet
      @result_bet +=@bet
    end

    def result_loos
      # p "не совпало"
      @bank.user_bank -= @bet
      @result_bet -= @bet
    end

    def win_rule
      @win_rule = (@bank.origin_user_bank * 1.1).to_i
      # p @win_rule
    end

    def stats
      # puts "Текущий банк => #{@bank.user_bank} Ставка => #{@bet} текущий раунд => #{@round} проиграл/выйграл => #{@result_bet} "
    end

    def insert_money (money)
      @bank.user_bank   = money
      @bank.origin_user_bank = money
      win_rule
        # p "Банк игрока #{money}"
    end


end
