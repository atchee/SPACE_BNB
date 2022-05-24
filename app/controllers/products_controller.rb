class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit]

  def index
    @products = policy_scope(Product)
  end

  def new
    @product = Product.new
    # authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @product = @product.save
  end

  def show
    authorize @product
  end

  def destroy
    @product = Product.find(params[:id])
    authorize @product
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :capacity, :description, :price, :place)
  end
end
