class Sample::ExtrasController < SampleController

  def error_403
    render :error_403, layout: "extras"
  end

  def error_404
    render :error_404, layout: "extras"
  end

  def error_500
    render :error_500, layout: "extras"
  end

  def plain_page
    render :plain_page, layout: "application"
  end

  def login_page
    render :login_page, layout: "login"
  end

  def pricing_tables
    render :pricing_tables, layout: "application"
  end

end
