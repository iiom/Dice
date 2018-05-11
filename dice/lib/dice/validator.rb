module Dice
  module Validator

    attr_accessor :error, :current_bank, :bank

    def initialize
      @bank = 40
      @current_bank = @bank
    end

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
      @error = "Гамовер. Сушите вёсла. Бегите в банк" if @current_bank <= 0
   end

   def check_current_bank!
     @error = "Ай красавчеге. Дай я тебя расцелую дорогой" if @current_bank >= @bank*1.2
   end


  end
end
