class Sample::DashboardController < SampleController

  def dashboard
    flash[:success ] = "Success Flash Message: Welcome to GentellelaOnRails"
    #other alternatives are
    # flash[:warn ] = "Israel don't quite like warnings"
    #flash[:danger ] = "Naomi let the dog out!"
  end

  def dashboard2

  end

  def dashboard3

  end

end
