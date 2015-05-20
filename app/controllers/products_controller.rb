# EXERCISE 7.3.9
# Create a new rails app and add to Github. It should:
#
# Display a list of products
# View each product
# Style your app

class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

end
