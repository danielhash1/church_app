# app/models/carousel_image.rb
class CarouselImage < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :position, presence: true, uniqueness: true
end
