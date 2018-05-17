require_relative 'game/casino'

module Game
  def self.create
    Casino.new
  end
end

game = Game.create

game.auto_play
