class PropertyInquiryMailer < ApplicationMailer
  default from: "hirosige1@gmail.com"
  default to:   "hirosige1@gmail.com"

  def received_email(property_inquiry)
    @property_inquiry = property_inquiry
    @property = @property_inquiry.get_property

    mail(
        :to      => property_inquiry.email,
        :subject => "【#{Settings.site[:name]}】Thank you for your inquiry"
    )
  end
end
