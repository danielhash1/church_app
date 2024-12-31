class HomeController < ApplicationController
  def index
    @posts = Post.all
    @carousel_images = CarouselImage.order(:position)
  end
end
