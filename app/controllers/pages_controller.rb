class PagesController < ApplicationController
  def index
    @products = Product.all
    @carts = current_user.carts
  end
end
