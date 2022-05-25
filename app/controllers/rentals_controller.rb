class RentalsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.product = @product
    authorize @rental

    if @rental.save
      redirect_to profile_path
      flash.alert = "Booking OK"
    else
      render template: "products/show", status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:arrival_date, :departure_date)
  end
end
