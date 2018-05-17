module Validator
  def check_user_bank(user_bank, win_rule)
    user_bank >= win_rule || user_bank >= 0
  end

  def check_win(user_bit, casino)
    user_bit == casino
  end

  def check_user_bit(user_bit, user_bank)
    user_bit <= user_bank
  end
end
