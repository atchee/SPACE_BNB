class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :departure_date, :arrival_date, presence: true
  validate :no_past_booking

  def no_past_booking
    if Date.today > arrival_date.to_date
      errors.add(:arrival_date, "Cannot be in the past")
    elsif Date.today > departure_date.to_date
      errors.add(:departure_date, "Cannot be in the past")
    end
  end

  # def overlaps
  # end

  # def is_overlaping?
  #   @rental = Rental.new(rental_params)
  #   @arrival_date = @rental.arrival_date.strftime("%Y-%m-%d")
  #   @departure_date = @rental.departure_date.strftime("%Y-%m-%d")

  #   overlap = false
  #   @all_rentals = Rental.all
  #   @all_rentals.each do |rental|
  #     arrival_date = rental.arrival_date.strftime("%Y-%m-%d")
  #     departure_date = rental.departure_date.strftime("%Y-%m-%d")
  #     if @arrival_date.between?(arrival_date, departure_date) || @departure_date.between?(arrival_date, departure_date)
  #       if rental.product_id == @rental.product_id
  #         overlap = true
  #       end
  #     end
  #   end
  #   return overlap
  # end
end
