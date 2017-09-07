class Front::SessionsController < FrontController
  def logout
    add_breadcrumb "ログアウト"
  end
end
