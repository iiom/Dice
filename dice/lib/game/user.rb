require_relative 'casino'
require_relative 'bank'

class User

  attr_accessor :casino

  def initialize
    @casino = Casino.new
  end
end
