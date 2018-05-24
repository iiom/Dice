require_relative 'casino'

class User

  attr_accessor :casino

  def initialize
    @casino = Casino.new
  end

  def insert_money (user_bank)
      casino.win_rule(user_bank)
      # p "Банк игрока #{user_bank}"
  end

end
