class Product < ApplicationRecord
  has_many :images,dependent: :destroy, inverse_of: :product
  has_many :likes,dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :images
end
