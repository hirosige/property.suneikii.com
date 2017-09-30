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
    "#{self.rent_fee.to_s(:delimited)} Baht"
  end

  def delimited_utility_fee
    "#{self.utility_fee.to_s(:delimited)} Baht"
  end

  def delimited_security_deposit
    "#{self.security_deposit.to_s(:delimited)} Baht"
  end

  def delimited_deposit
    "#{self.deposit.to_s(:delimited)} Baht"
  end

  def delimited_update_fee
    "#{self.info.update_fee.to_s(:delimited)} Baht"
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

  def unit_floor
    "#{self.info.floor}階"
  end

  def kitchen_bath
    self.info.kitchen_bath
  end

  def services
    self.info.services
  end

  def etc
    self.info.etc
  end

  def remarks
    self.info.remarks
  end

  def balcony_space
    "#{self.info.balcony_space}㎡"
  end

  def light_direction
    "#{self.info.light_direction}"
  end

  def made_of
    "#{self.info.made_of}"
  end

  def number_of_rooms
    "#{self.info.number_of_rooms}戸"
  end

  def contact_span
    "#{self.info.contact_span}戸"
  end

  def house_insurance
    "#{self.info.house_insurance}"
  end

  def property_status
    "#{self.info.property_status}"
  end

  def availability
    "#{self.info.availability}"
  end

  def management_id
    "#{self.info.management_id}"
  end

  def deal_way
    "#{self.info.deal_way}"
  end

  def formatted_created_at
    format_datetime(self.created_at)
  end

  def formatted_updated_at
    format_datetime(self.updated_at)
  end

  # For options

  def brandnew
    if self.info.brandnew?
      "active"
    else
      "inactive"
    end
  end

  def more_than_2floors
    if self.info.more?
      "active"
    else
      "inactive"
    end
  end

  def light_on_south
    if self.info.south?
      "active"
    else
      "inactive"
    end
  end

  def parkinglot
    if self.info.have_park?
      "active"
    else
      "inactive"
    end
  end

  def auto_lock
    if self.info.have_auto_lock?
      "active"
    else
      "inactive"
    end
  end

  def air_con
    if self.info.have_air_con?
      "active"
    else
      "inactive"
    end
  end

  def separate_bath_toilet
    if self.info.separated_bath_toilet?
      "active"
    else
      "inactive"
    end
  end

  def reheating
    if self.info.have_reheating?
      "active"
    else
      "inactive"
    end
  end

  def wooden_floor
    if self.info.have_wooden_floor?
      "active"
    else
      "inactive"
    end
  end

  def pet
    if self.info.have_pet?
      "active"
    else
      "inactive"
    end
  end

  def parking
    if self.info.have_park?
      "有り"
    else
      "無し"
    end
  end
end
