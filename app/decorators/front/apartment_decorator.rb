class Front::ApartmentDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def photo
    if self.photo_url(:middle).nil?
      h.image_tag("no_image.rf", :class => 'photo-thumnail')
    else
      "<img class='photo-thumnail' src='#{self.photo_url(:middle)}'>".html_safe
    end
  end

end
