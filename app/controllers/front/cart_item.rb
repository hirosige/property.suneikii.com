class CartItem
  def initialize
    @id = ''
    @name = ''
    @price = 0
    @count = 1
  end

  def get_id
    @id
  end

  def set_id(id)
    @id = id
  end

  def get_name
    @name
  end

  def set_name(name)
    @name = name
  end

  def get_price
    @price
  end

  def set_price(price)
    @price = price
  end

  def get_count
    @count
  end

  def count
    @count += 1
  end
end