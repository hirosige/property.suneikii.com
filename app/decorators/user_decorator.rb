class UserDecorator < Draper::Decorator
  delegate_all

  def your_id_sign
    "<span class='label label-warning'>It's you!!</span>".html_safe if h.current_user.id == model.id
  end

  def blacklisted?
    'checked' if model.blacklist_flg
  end
end