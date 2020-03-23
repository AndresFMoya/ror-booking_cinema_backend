class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :card, presence: true, uniqueness: true
end
