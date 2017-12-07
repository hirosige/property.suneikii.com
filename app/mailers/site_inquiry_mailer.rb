class SiteInquiryMailer < ApplicationMailer
  default from: "no-reply.property@suneikii.com"
  default to:   "hirosige1@gmail.com"

  def received_email(site_inquiry)
    @site_inquiry = site_inquiry
    mail(
        :to      => site_inquiry.email,
        :bcc     => "property.admin@suneikii.com",
        :subject => "【#{Settings.site[:name]}】Thank you for your inquiry"
    )
  end
end
