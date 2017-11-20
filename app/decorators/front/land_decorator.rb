class Front::LandDecorator < Draper::Decorator
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

  def made_of
    "-"
  end

  def info
    self.land_info
  end

  def delimited_rent_fee
    "#{self.rent_fee.to_s(:delimited)} Baht"
  end

  def delimited_update_fee
    "-"
  end

  def delimited_utility_fee
    "-"
  end

  def delimited_security_deposit
    "-"
  end

  def delimited_deposit
    "-"
  end

  def unit_space
    "#{self.space}㎡"
  end

  def room_type_name
    "-"
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

  def contact_span
    "#{self.info.contact_span}戸"
  end

  def property_status
    "#{self.info.property_status}"
  end

  def availability
    "#{self.info.availability}"
  end

  def unit_floors
    "-"
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

  def formatted_since_when
    "-"
  end

  def light_direction
    "-"
  end

  def show_url(id)
    h.land_path(id)
  end

  # For options

  def corner
    if self.info.corner?
      "active"
    else
      "inactive"
    end
  end

  def low_rise_residential_area
    if self.info.low_rise_residential_area?
      "active"
    else
      "inactive"
    end
  end

  def no_condition
    if self.info.no_condition?
      "active"
    else
      "inactive"
    end
  end

  def ownership_or_not
    if self.info.ownership_or_not?
      "active"
    else
      "inactive"
    end
  end

end
