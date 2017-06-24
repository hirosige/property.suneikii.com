class Admin::Products::ColorsCell < Cell::ViewModel
  include ::Cell::Slim

  property :name

  def index
    render
  end

  def show
    render
  end

  private
  def author_link
    link_to name, '/'
  end
end