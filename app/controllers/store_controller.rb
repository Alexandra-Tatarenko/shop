class StoreController < ApplicationController
  def index
	@products = Product.order(:title)
        @cart = current_cart
        @time_and_data = Time.current
  end
end
