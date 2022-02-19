class Product

  attr_accessor :price, :amount

  # Конструктор товара записывает, сколько стоит товар и сколько осталось
  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  # Родительский метод to_s возвращает строку с ценой и остатком
  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

end