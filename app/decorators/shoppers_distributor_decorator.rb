class ShoppersDistributorDecorator < Draper::Decorator
  delegate_all

  def shoppers_count
    ShoppersDistributor.where(
      :shopper_id => model.shopper_id
    ).count
  end

end
