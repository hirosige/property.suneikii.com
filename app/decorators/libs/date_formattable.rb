module DateFormattable Draper::Decorator

  def format_date(date)
    # date['ja_date'] -convert-> date[:ja_date]
    date.to_s("#{I18n.locale.id2name}_date".intern) unless date.nil?
  end

  def format_datetime(datetime)
    datetime.to_s("#{I18n.locale.id2name}_datetime".intern) unless datetime.nil?
  end
end
