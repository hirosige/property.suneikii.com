class Front::Mobile::Sessions::SignInCell < Cell::ViewModel
  include ::Cell::Erb

  include Devise::Controllers::Helpers

  property :name
  property :gravatar_url
  property :role

  def index
    render
  end

  def show
    render
  end

  def sign_in_btn
    render
  end

  private
    def author_link
      link_to name, '/'
    end

    def gravatar_url
      model.gravatar_url
    end

    def login_link
      new_user_session_path
    end

    def logout_link
      destroy_user_session_path
    end

    def edit_link
      user_edit_path
    end

    def my_page_link
      user_profile_path
    end

    def admin_page_link
      admin_path
    end

    def clear_session_link
      user_clear_session_path
    end
end