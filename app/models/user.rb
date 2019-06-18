class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :orders
  has_many :add_billings
  has_many :add_shippings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
