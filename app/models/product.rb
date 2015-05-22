class Product < ActiveRecord::Base
  validates :name, :price, uniqueness: true, presence: true
  validates :price, numericality: { greater_than: 0 }, presence: true
end
