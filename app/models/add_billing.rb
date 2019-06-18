class AddBilling < ApplicationRecord
	validates :phone, presence: true
	validates :addline1, presence: true
	validates :addline2, presence: true
	validates :city, presence: true
	validates :country, presence: true

	validates :zipcode, presence: true


  belongs_to :user
  belongs_to :order
end
