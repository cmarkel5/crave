class DeclinesController < ApplicationController
  
  def add_decline
    if signed_in?
      if Product.where(item_id: product_params[:item_id]).first == nil
        @product = Product.create(product_params)
      else
        @product = Product.where(item_id: product_params[:item_id]).first
      end
      current_customer.declines.create(product_id: @product.id)
      redirect_to shop_path
    else
      redirect_to signin_path
    end
  end

  private

    def product_params
      params.require(:product).permit(:item_id, :name, :msrp, :sale_price, :thumbnail_image, :short_description, :customer_rating_image)
    end

end
