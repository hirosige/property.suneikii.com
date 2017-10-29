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

  def info
    self.land_info
  end

  def delimited_rent_fee
    "#{self.rent_fee.to_s(:delimited)} Baht"
  end

  def delimited_update_fee
    "#{self.info.update_fee.to_s(:delimited)} Baht"
  end

  def unit_space
    "#{self.space}㎡"
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

  # def brandnew
  #   if self.info.brandnew?
  #     "active"
  #   else
  #     "inactive"
  #   end
  # end
  #
  # def more_than_2floors
  #   if self.info.more?
  #     "active"
  #   else
  #     "inactive"
  #   end
  # end
  #
  # def light_on_south
  #   if self.info.south?
  #     "active"
  #   else
  #     "inactive"
  #   end
  # end
  #
  # def parkinglot
  #   if self.info.have_park?
  #     "active"
  #   else
  #     "inactive"
  #   end
  # end

end
