class RoomClassDecorator < Draper::Decorator
  delegate_all
  include DateFormattable

  def print_image
    if self.image?
      h.image_tag self.image.thumb.url
    else
      "画像なし"
    end
  end

  def accessory_list
    str = ""

    self.accessories.each do |accessory|
      str += "・#{accessory.name}<br>"
    end
    str.html_safe
  end

  def service_list
    str = ""

    self.services.each do |service|
      str += "・#{service.name}<br>"
    end
    str.html_safe
  end

  def formatted_created_date
    format_datetime(self.created_at)
  end

  def formatted_updated_date
    format_datetime(self.updated_at)
  end
end
