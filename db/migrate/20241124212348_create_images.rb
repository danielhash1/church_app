class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :images do |t|
      t.integer :post_id, null: false
      t.string :url

      t.timestamps
    end

    add_index :images, :post_id
    add_foreign_key :images, :posts
  end
end
