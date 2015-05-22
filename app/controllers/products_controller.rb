# EXERCISE 7.3.9
# Create a new rails app and add to Github. It should:
#
# Display a list of products
# View each product
# Style your app

class ProductsController < ApplicationController

  before_action :find_product, except: [ :index, :new, :create ]

  def find_product
    @product = Product.find(params[:id])
  end


  def index
    @products = Product.all
  end

  def show
    #find_product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    # @product.valid? #do I need these two?
    # @product.persisted?
    if @product.save
      redirect_to product_url(@product), notice: 'Updated product' #to show a prod
    else
      render :new
    end
  end

  def edit; end
    #find_product

  def update
    #find_product
    if @product.update_attributes(product_params)
      redirect_to products_url
    else
      render :edit
    end
  end

  def destroy
    #find_product
    @product.destroy
    redirect_to products_url, notice: 'Deleted product' #to products index
  end

  def product_params
  params.require(:product).permit(:name, :price)
end

end
