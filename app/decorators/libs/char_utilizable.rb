module CharUtilizable Draper::Decorator

  def localed_datetime_format
    localed_datetime = I18n.locale == :ja ? :jp_datetime : :en_datetime
    localed_datetime
  end

  def localed_date_format
    localed_datetime = I18n.locale == :ja ? :jp_date : :en_date
    localed_datetime
  end
end
