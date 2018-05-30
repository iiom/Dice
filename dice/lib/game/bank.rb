class Bank
  attr_accessor :user_bank, :origin_user_bank # доступ из вне к банку игрока

  def initialize
    # объявленая переменная банка при инициализации экземпляра класса банк
    # в которой хранится банк игрока
    @user_bank = nil
    @origin_user_bank = nil
    # ну вот так норм
  end
end
