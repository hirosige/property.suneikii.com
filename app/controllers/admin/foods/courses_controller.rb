class Admin::Foods::CoursesController < AdminController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @courses    = CourseDecorator.decorate_collection(
        @restaurant.courses.page(params[:page])
    )
  end

  def show
  end

  def new
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @course     = @restaurant.courses.build
  end

  def edit
  end

  def create
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @course     = @restaurant.courses.build(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to [:admin, :foods, @restaurant, @course], notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to [:admin, :foods, @restaurant, @course], notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to admin_foods_restaurant_courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_course
      @restaurant = Restaurant.friendly.find(params[:restaurant_id])
      @course     = @restaurant.courses.find(params[:id])
    end

    def course_params
      params.require(:course).permit(
          :title,
          :photo,
          :start_date,
          :end_date,
          :start_time,
          :end_time,
          :price,
          :list,
          :restaurant_id,
          menus_attributes: [
              :id,
              :course_id,
              :_destroy
          ],
      )

      #  id            :integer          not null, primary key
      #  title         :string(255)
      #  name          :string(255)
      #  photo         :string(255)
      #  description   :text(65535)
      #  price         :integer
      #  restaurant_id :integer
      #  created_at    :datetime         not null
      #  updated_at    :datetime         not null
    end
end
