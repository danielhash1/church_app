class AddAuthorToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :author_name, :string
    add_column :posts, :author_email, :string
  end
end
