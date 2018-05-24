require_relative 'game/user'

module Game
  def self.create
    User.new
  end
end


# # Игра должна выглядеть как-то так в файле game.rb
gamer = Game.create
gamer.insert_money 1000
gamer.casino.bet 150
gamer.casino.game_dice
gamer.casino.stats
# gamer.casino.bet -800
# gamer.casino.bet восемьсот
gamer.casino.bet 250
gamer.casino.game_dice
gamer.casino.stats
gamer.casino.bet 300
gamer.casino.game_dice
gamer.casino.stats
gamer.casino.bet 300
gamer.casino.game_dice
gamer.casino.stats
gamer.casino.bet 300
gamer.casino.game_dice
gamer.casino.stats
# gamer.amount
# gamer.casino.current_round
# gamer.casino.bet -800
# gamer.casino.bet восемьсот
# gamer.casino.bet 800
# gamer.casino.game_dice
# gamer.amount
# gamer.casino.current_round
