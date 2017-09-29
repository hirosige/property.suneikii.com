class ApartmentDecorator < Draper::Decorator
  delegate_all

  include DateFormattable

  def formatted_created_date
    format_datetime(self.created_at)
  end

  def formatted_updated_date
    format_datetime(self.updated_at)
  end

  def publish?
    if self.status == "public"
      true
    else
      false
    end
  end

  def private?
    if self.status == "private"
      true
    else
      false
    end
  end

  def decollated_status
    p
    if self.status == 'secret'
      "<div class='label label-warning'>#{h.t("admin.apartments.items.status.#{self.status}")}</div>".html_safe
    else
      "<div class='label label-primary'>#{h.t("admin.apartments.items.status.#{self.status}")}</div>".html_safe
    end

  end

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

  def unit_floors
    "#{self.info.floors}階"
  end
end
