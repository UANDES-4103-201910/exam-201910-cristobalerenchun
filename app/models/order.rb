class Order < ApplicationRecord
  belongs_to :user
  has_one :add_billing
  has_one :add_shipping
  has_many :order_products
 
  has_many :products, through: :order_products


end
