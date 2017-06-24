class InquiryMailer < ApplicationMailer
  default from: "hirosige1@gmail.com"   # 送信元アドレス
  default to: "hirosige1@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => "【#{t('site_name')}】お問い合わせを承りました")
  end
end
