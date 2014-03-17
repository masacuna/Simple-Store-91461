class Product < ActiveRecord::Base
  validates :title, :price, :stock_quantity, presence: true
  validates :price, numericality: true
  validates :stock_quantity, numericality: { only_integer: true }
end
