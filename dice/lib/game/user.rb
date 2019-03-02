require_relative 'casino'
require_relative 'bank'

class UserSpec

  attr_accessor :casino

  def initialize
    @casino = Casino.new
  end
end
