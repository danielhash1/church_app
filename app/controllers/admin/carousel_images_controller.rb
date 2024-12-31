class Admin::CarouselImagesController < ApplicationController
  before_action :set_carousel_image, only: [:edit, :update, :destroy]

  def index
    @carousel_images = CarouselImage.order(:position) # Упорядочиваем по position
    @new_carousel_image = CarouselImage.new
  end

  def new
    @carousel_image = CarouselImage.new
  end

  def create
    @carousel_image = CarouselImage.new(carousel_image_params)
    set_default_position unless @carousel_image.position.present? # Устанавливаем позицию по умолчанию

    if @carousel_image.save
      redirect_to root_path, notice: 'Image was successfully uploaded.'
    else
      @carousel_images = CarouselImage.order(:position)
      render :index
    end
  end

  def edit

  end

  def update
    if @carousel_image.update(carousel_image_params)
      redirect_to admin_carousel_images_path, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @carousel_image.destroy
    redirect_to admin_carousel_images_path, notice: 'Image was successfully deleted.'
  end

  private

  def set_carousel_image
    @carousel_image = CarouselImage.find(params[:id])
  end

  def carousel_image_params
    params.require(:carousel_image).permit(:image, :position)
  end

  def set_default_position
    @carousel_image.position = (CarouselImage.maximum(:position) || 0) + 1
  end
end
