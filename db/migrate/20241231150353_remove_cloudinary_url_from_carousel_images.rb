class RemoveCloudinaryUrlFromCarouselImages < ActiveRecord::Migration[7.1]
  def change
    remove_column :carousel_images, :cloudinary_url, :string
  end
end
