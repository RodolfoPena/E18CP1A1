class CartsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @cart = Cart.new(product_id: @product, user: current_user)
    if @cart.save
      redirect_to user_product_carts_path(current_user), notice: 'El producto ha sido agregado'
    else
      redirect_to user_product_carts_path(current_user), alert: 'El producto no ha sido agregado'
    end
  end

  def index
    @carts = current_user.carts
  end

  private

  def product_id
    params.require(:product).permit(:product_id)
  end
end
