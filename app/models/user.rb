class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations, foreign_key: 'customer_id'
  has_many :items, foreign_key: 'admin_id'

  include Devise::JWT::RevocationStrategies::JTIMatcher
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
         
  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :first_name, :last_name, presence: true, length: { maximum: 50 }
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
  validates :email, presence: true, length: { maximum: 50 }
end
