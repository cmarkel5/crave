class Product < ActiveRecord::Base
  has_and_belongs_to_many :customers

  def self.random
    self.grab_product
  end

  private
    def self.grab_product 
      walmart_api_key = x4bsdrczpgjsh8xyk7s5ssda
      category = "electronics"
      search_url = "http://api.walmartlabs.com/v1/search?apiKey=#{walmart_api_key}&query=#{category}&facet=on&facet.range=price:[0%20TO%2050]"
      JSON.create_id = nil
      return HTTParty.get search_url
    end
end
