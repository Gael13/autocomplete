class ProductsController < ApplicationController
  
  def index
  	@products = Product.search(params[:search])
  end

  private

  def product_params
  	params.require(:product).permit(:name, :category, :price)
  end	
end
