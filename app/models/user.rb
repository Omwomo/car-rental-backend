class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reservations, foreign_key: 'customer_id'
  has_many :items, foreign_key: 'adminId'
  attribute :firstName, :string
  attribute :lastName, :string

  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates :username, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :firstName, :lastName, presence: true, length: { maximum: 50 }
  validates :firstName, :lastName, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
  validates :email, presence: true, length: { maximum: 50 }
end
