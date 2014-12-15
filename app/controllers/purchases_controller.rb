class PurchasesController < ApplicationController

  def add_purchase
    if Product.where(item_id: product_params[:item_id]).first == nil
      @product = Product.create(product_params)
    else
      @product = Product.where(item_id: product_params[:item_id]).first
    end
    current_customer.products << @product
    redirect_to shop_path
  end

  private

    def product_params
      params.require(:product).permit(:item_id, :name, :msrp, :sale_price, :thumbnail_image, :short_description, :customer_rating_image, :purchased, :declined)
    end

end

# # M, A_M, A
# @movie.actors << @actor

# # C, Pu, Pr
# Purchase.create(customer_id: current_customer.id, product_id: @product.id)
# current_customer.purchases.create(product_id: @product.id)
# current_customer.products << @product
