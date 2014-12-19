class ProductsController < ApplicationController

  def electronics
    @electronics = Product.grab_electronics
  end

  def random
    @electronic = Product.grab_electronics.sample
  end

end
