class Product < ApplicationRecord
	validates :brand, presence: true
    validates :model, presence: true
    validates :price, presence: true
    validates :shortde, presence: true
    validates :longde, presence: true
    validates :dtype, presence: true
   
	has_many :order_products
 
    has_many :orders, through: :order_products
end
