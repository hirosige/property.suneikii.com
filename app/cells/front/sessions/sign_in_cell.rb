class Front::Sessions::SignInCell < Cell::ViewModel
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
end