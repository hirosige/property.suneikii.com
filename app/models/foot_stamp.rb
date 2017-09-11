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

    self.apartment_sessions.each do |apartment|
      self.properties.push(Apartment.find(apartment))
    end
  end
end