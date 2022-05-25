class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :departure_date, :arrival_date, presence: true
  validate :no_past_booking
  validate :overlaps

  def no_past_booking
    if Date.today > arrival_date.to_date
      errors.add(:arrival_date, "Cannot be in the past")
    elsif Date.today > departure_date.to_date
      errors.add(:departure_date, "Cannot be in the past")
    end
  end

  def overlaps
    rentals = Rental.where(product_id: product_id)
    rentals.each do |rental|
      if arrival_date <= rental.departure_date && rental.arrival_date <= departure_date
        return errors.add(:arrival_date, "Already booked")
      end
    end
  end
end
