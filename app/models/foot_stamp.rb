class FootStamp
  include ActiveModel::Model
  #include ActiveModel::Callbacks

  attr_accessor :properties
  attr_accessor :apartment_sessions
  attr_accessor :land_sessions

  def initialize(sessions)
    self.apartment_sessions = sessions[:apartment_sessions]
    self.land_sessions = sessions[:land_sessions]
  end

  def build_properties
    self.properties = Array.new

    unless self.apartment_sessions.nil?
      self.apartment_sessions.each do |apartment|
        if Apartment.exists?(apartment)
          self.properties.push(Front::ApartmentDecorator.decorate(Apartment.find(apartment)))
        else
          Apartment.new(:name => 'この物件は削除されました。')
        end
      end
    end

    unless self.land_sessions.nil?
      self.land_sessions.each do |land|
        if Land.exists?(land)
          self.properties.push(Front::LandDecorator.decorate(Land.find(land)))
        else
          Land.new(:name => 'この物件は削除されました。')
        end
      end
    end

  end
end