class Product < ActiveRecord::Base
  has_many :purchases
  has_many :customers, through: :purchases

  validates :item_id, uniqueness: true

  def self.grab_electronics 
    walmart_api_key = "x4bsdrczpgjsh8xyk7s5ssda"
    category = "electronics"
    search_url = "http://api.walmartlabs.com/v1/search?apiKey=#{walmart_api_key}&query=#{category}&facet=on&facet.range=price:[0%20TO%2050]"
    # JSON.create_id = nil
    response = HTTParty.get search_url
    response["items"]
  end
end