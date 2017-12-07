class PropertyInquiryMailer < ApplicationMailer
  default from: "no-reply.property@suneikii.com"
  default to:   "hirosige1@gmail.com"

  def received_email(property_inquiry)
    @property_inquiry = property_inquiry
    @property = @property_inquiry.get_property(:apartment) unless property_inquiry.apartment_id.nil?
    @property = @property_inquiry.get_property(:land) unless property_inquiry.land_id.nil?

    mail(
        :to      => property_inquiry.email,
        :subject => "【#{Settings.site[:name]}】Thank you for your inquiry"
    )
  end
end
