class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
