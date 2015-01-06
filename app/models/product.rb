class Product < ActiveRecord::Base
  has_many :purchases
  has_many :purchasing_customers, through: :purchases, source: :customer

  has_many :declines
  has_many :declining_customers,  through: :declines,  source: :customer

  validates :item_id, uniqueness: true

  def self.grab_electronics
    walmart_api_key = "x4bsdrczpgjsh8xyk7s5ssda"
    category = "electronics"
    search_url = "http://api.walmartlabs.com/v1/search?apiKey=#{walmart_api_key}&query=#{category}&facet=on&facet.range=price:[0%20TO%2050]"
    response = HTTParty.get search_url
    response["items"]
  end
end










# class System < ActiveRecord::Base
#   belongs_to :project_manager, :class_name => 'PointOfContact'
#   belongs_to :technical_manager, :class_name => 'PointOfContact'
# end
