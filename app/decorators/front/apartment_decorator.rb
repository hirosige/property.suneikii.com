class Front::ApartmentDecorator < Draper::Decorator
  delegate_all

  include DateFormattable

  def photo
    if self.photo_url(:middle).nil?
      h.image_tag("no_image.rf", :class => 'photo-thumnail')
    else
      "<img class='photo-thumnail' src='#{self.photo_url(:middle)}'>".html_safe
    end
  end

  def category
    self.object.model_name.name
  end

  def info
    self.apartment_info
  end

  def delimited_rent_fee
    self.rent_fee.to_s(:delimited)
  end

  def delimited_utility_fee
    self.utility_fee.to_s(:delimited)
  end

  def delimited_security_deposit
    self.security_deposit.to_s(:delimited)
  end

  def delimited_deposit
    self.deposit.to_s(:delimited)
  end

  def unit_space
    "#{self.space}㎡"
  end

  def formatted_since_when
    format_date(self.since_when)
  end

end
