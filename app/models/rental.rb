class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :departure_date, :arrival_date, presence: true
end
