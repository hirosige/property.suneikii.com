class Cart
  def initialize
    @goods = Array.new
  end

  def add(item)
    @goods.each do |good|
      if good.get_id == item.get_id
        good.count
        return
      end
    end

    @goods.push(item)
  end

  def get_goods
    @goods
  end
end