class Product < ActiveRecord::Base
  # has_and_belongs_to_many :customers

  def self.grab_electronics 
    walmart_api_key = "x4bsdrczpgjsh8xyk7s5ssda"
    category = "electronics"
    search_url = "http://api.walmartlabs.com/v1/search?apiKey=#{walmart_api_key}&query=#{category}&facet=on&facet.range=price:[0%20TO%2050]"
    # JSON.create_id = nil
    response = HTTParty.get search_url
    response["items"]
  end
end

  # def self.random
  #   cal_quote = self.grab_quote
  #   until cal_quote["source"] == "calvin" do 
  #     cal_quote = self.grab_quote
  #   end
  #   return cal_quote
  # end

  # private
  #   def self.grab_quote 
  #     source = "calvin"
  #     search_url = "http://www.iheartquotes.com/api/v1/random.json?source=#{source}"
  #     JSON.create_id = nil
  #     return HTTParty.get search_url
  #   end
