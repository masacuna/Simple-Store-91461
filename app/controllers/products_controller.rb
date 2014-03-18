class ProductsController < ApplicationController
  # Retrieve and display all the products.
  def index
    @products = Product.all
  end # Defaults to loading the view of the same name:
      # app/views/products/index.html.erb
      # This view will have access to the @products variable.

  # Display a single product
  def show
    @product = Product.find(params[:id])
  end # Loading: app/views/products/show.html.erb

  # Displaying a form for a new product
  def new
    @product = Product.new
  end

  # Receive new product details POSTed from the 'new' form
  # and create a new product in the database.
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to :action => :index
    else
      render :new # Render new.html.erb with access to @product
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
  end
  
private
  def product_params
    params.require(:product).permit(:title, :description, :price, :stock_quantity)
  end
end
