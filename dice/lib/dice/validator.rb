module Dice
  module Validator

    attr_accessor :error

    def valid? *args
      clear_error!

      args.each do |validator_name|
        send "check_#{validator_name}!"
      end

      @error.nil? ? true : false
    end

    # private

    def clear_error!
      @error = nil
    end

    def check_current_bank!
      if @roll.current_bank <= 0
        @error = "Гамовер. Сушите вёсла. Бегите в банк"
      elsif
        @roll.current_bank >= @roll.bank*1.2
        @error = "Ай красавчеге. Дай я тебя расцелую дорогой"
      end
     end
  end
end
