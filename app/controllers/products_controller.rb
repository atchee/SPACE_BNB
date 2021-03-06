class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = policy_scope(Product)

    if params[:query].present?
      # raise
      @products = @products.search_product(params[:query])
    end
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def show
    @rental = Rental.new
    authorize @product
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :capacity, :description, :price, :place, :genre_id, photos: [])
  end
end
