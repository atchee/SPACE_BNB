class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.product = Product.find(params[:product_id])
    authorize @rental

    if @rental.save
      redirect_to products_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to products_path, status: :see_other
    authorize @rental
  end

  private

  def rental_params
    params.require(:rental).permit(:arrival_date, :departure_date)
  end
end
