class ProductsController < ApplicationController

  def electronics
    @electronics = Product.grab_electronics
  end

  def random
    @electronics = Product.grab_electronics.sample
  end

end
