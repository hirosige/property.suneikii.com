class Front::ProductsController < FrontController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @goods = Good.page(params[:page])
  end

  def show
  end

  def add_cart
    session[:cart] ||= Cart.new
    item = CartItem.new
    item.set_id(params[:id])
    the_good = Good.find(params[:id])
    item.set_name(the_good.name)
    item.set_price(the_good.price)
    session[:cart].add(item)

    redirect_to :action => 'index'
  end

  def cart
    @items = Array.new
    @items = session['cart'] unless session['cart'].nil?
    p @items
  end

  def kill
    session[:cart] = nil
    redirect_to :action => 'index'
  end

  private
    def set_product
      @product = Good.find(params[:id])
    end
end
