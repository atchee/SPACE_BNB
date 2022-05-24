class Product < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :rentals, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :capacity, :price, :place, presence: true
end
