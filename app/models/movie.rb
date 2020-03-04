class Movie < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :image, presence: true
  validates :date_start, presence:true
  validates :date_end, presence:true
end
