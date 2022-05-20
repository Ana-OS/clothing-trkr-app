class Item < ApplicationRecord
  has_one_attached :photo

  validates :name, :type_of_product, :color, :size, :price, :quantity, presence: true
  validates :type_of_product, inclusion: {in: %w(t-shirt dress skirt pants jacket)}
  validates :size, inclusion: { in: %w( S M L) }
  validates :price, numericality: { only_integer: true}
end
