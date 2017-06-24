class CustomerDecorator < Draper::Decorator
  delegate_all
  include HtmlUtilizable
  include CharUtilizable

  def set_table
    self.set_table_slim
  end

  def full_name
    "#{model.first_name} #{model.last_name}"
  end

  def gender
    gender = model.gender_id == 1 ? '男性' : '女性'
    gender
  end

  def formatted_birthday
    format_date(model.birthday) unless model.birthday.nil?
  end

  private
  def format_datetime(date)
    date.to_s(self.localed_datetime_format)
  end

  def format_date(date)
    date.to_s(self.localed_date_format)
  end

end
