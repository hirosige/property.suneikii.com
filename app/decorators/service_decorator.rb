class ServiceDecorator < Draper::Decorator
  delegate_all
  include DateFormattable

  def formatted_created_date
    format_datetime(self.created_at)
  end

  def formatted_updated_date
    format_datetime(self.updated_at)
  end
end
