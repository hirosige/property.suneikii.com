class ParamsService
  def initialize(params)
    @params = params
    @category = @params[:controller].split('/')[1]
  end

  def category
    @category
  end

  def singular_category
    @category.singularize
  end

  def hyphenize(text)
    text.split(' ').map(&:downcase).join('-')
  end

  def visualize(text)
    text.split('-').map(&:capitalize).join(' ')
  end
end

