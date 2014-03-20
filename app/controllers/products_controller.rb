class ProductsController < ApplicationController
  
  def index
  	@products = Product.search(params[:search])
  end

  private

  def search_params
  	params.require(:product).permit(:name, :category, :price)
  end	
end
