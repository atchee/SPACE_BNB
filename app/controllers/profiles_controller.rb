class ProfilesController < ApplicationController
  def profile
    @products = current_user.products
    authorize @products
  end
end
