class HomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    @carousel_images = CarouselImage.order(:position)
  end
end
