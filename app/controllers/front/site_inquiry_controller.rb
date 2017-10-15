class Front::SiteInquiryController < FrontController

  def index
    @site_inquiry = SiteInquiry.new
    render :action => 'index'
  end

  def confirm
    @site_inquiry = SiteInquiry.new(site_inquiry_params)
    if @site_inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @site_inquiry = SiteInquiry.new(site_inquiry_params)
    @site_inquiry.save

    SiteInquiryMailer.received_email(@site_inquiry).deliver

    render :action => 'thanks'
  end

  private
    def site_inquiry_params
      params.require(:site_inquiry).permit(
          :name, :email, :body
      )
    end
end
