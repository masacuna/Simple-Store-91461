class ProductsController < ApplicationController
  # Retrieve and display all the products.
  def index
    @products = Product.all
  end # Defaults to loading the view of the same name:
      # app/views/products/index.html.erb
      # This view will have access to the @products variable.

  # Display a single product
  def show
  end # Loading: app/views/products/show.html.erb

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
