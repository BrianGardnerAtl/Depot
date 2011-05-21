class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    @cart = current_cart
  end

  def empty_cart
    session[:cart] = nil
    redirect_to_index unless request.xhr?
  end

end
