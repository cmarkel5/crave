class ProductsController < ApplicationController

  def electronics
    @electronics = Product.grab_electronics
  end

  def random
    @electronic = Product.grab_electronics.sample
  end

  # def duplication_check
  #   duplication_array = []

  #   @purchases.each do |product|
  #     duplication_array << product.id
  #   end

  #   @declines.each do |product|
  #     duplication_array << product.id
  #   end
  # end

end
