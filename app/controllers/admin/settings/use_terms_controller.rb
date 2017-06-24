class Admin::Settings::UseTermsController < AdminController
  before_action :set_use_term, only: [:show, :edit, :update, :destroy]

  def index
    @use_terms = UseTermDecorator.decorate_collection(
        UseTerm.page(params[:page])
    )
  end

  def show
  end

  def new
    @use_term = UseTerm.new
    @use_term.use_term_articles.build
    @use_term.use_term_articles.use_term_article_details.build
  end

  def edit
  end

  def create
    @use_term = UseTerm.new(use_term_params)

    respond_to do |format|
      if @use_term.save
        format.html { redirect_to [:admin, :settings, @use_term], notice: 'Use term was successfully created.' }
        format.json { render :show, status: :created, location: @use_term }
      else
        format.html { render :new }
        format.json { render json: @use_term.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @use_term.update(use_term_params)
        format.html { redirect_to [:admin, :settings, @use_term], notice: 'Use term was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_term }
      else
        format.html { render :edit }
        format.json { render json: @use_term.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @use_term.destroy
    respond_to do |format|
      format.html { redirect_to use_terms_url, notice: 'Use term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_use_term
      @use_term = UseTerm.find(params[:id])
    end

    def use_term_params
      params.require(:use_term).permit(
          :title,
          :sub_title,
          :description,
          use_term_articles_attributes: [
              :id,
              :title,
              :use_term_id,
              :_destroy,
              use_term_article_details_attributes: [
                  :id,
                  :description,
                  :use_term_article_id,
                  :_destroy
              ]
          ],
      )
    end
end
