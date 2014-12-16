class Customer < ActiveRecord::Base
  has_many :purchases
  has_many :purchased_products, through: :purchases, source: :product

  has_many :declines
  has_many :declined_products,  through: :declines,  source: :product

  before_save { email.downcase! }
  before_create :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 200 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_remember_token
    self.remember_token = Customer.digest(Customer.new_remember_token)
  end
end





# class PointOfContact < ActiveRecord::Base
#   has_many :project_managed_systems, :class_name => 'System', :foreign_key => 'project_manager_id'
#   has_many :technical_managed_systems, :class_name => 'System', :foreign_key => 'technical_manager_id'
# end