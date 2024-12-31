class CreateCarouselImages < ActiveRecord::Migration[7.1]
  def change
    create_table :carousel_images do |t|
      t.string :cloudinary_url, null: false # URL Cloudinary
      t.integer :position 
      t.timestamps
    end
  end
end
