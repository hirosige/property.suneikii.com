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
end
