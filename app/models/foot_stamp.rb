class FootStamp
  include ActiveModel::Model
  #include ActiveModel::Callbacks

  attr_accessor :properties
  attr_accessor :apartment_sessions

  def initialize(sessions)
    self.apartment_sessions = sessions[:apartment_sessions]
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

  end
end