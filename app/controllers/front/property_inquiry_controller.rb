class Front::PropertyInquiryController < FrontController
  include Mobylette::RespondToMobileRequests

  def index
    @property_inquiry = PropertyInquiry.new
    render :action => 'index'

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def confirm
    @property_inquiry = PropertyInquiry.new(property_inquiry_params)
    if @property_inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def thanks
    @property_inquiry = PropertyInquiry.new(property_inquiry_params)
    @property_inquiry.save

    PropertyInquiryMailer.received_email(@property_inquiry).deliver

    render :action => 'thanks'

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  private
    def property_inquiry_params
      params.require(:property_inquiry).permit(
          :name,
          :email,
          :tel,
          :body,
          :apartment_id
      )
    end
end
