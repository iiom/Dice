require_relative 'game/casino'

module Game
  def self.create
    Casino.new
  end
end

game = Game.create
# p game.user_bit
game.auto_play
