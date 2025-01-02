class ChangeDescriptionInPosts < ActiveRecord::Migration[6.0]
  def up
    # Применить изменения, которые были в change_column
    change_column :posts, :description, :text
  end

  def down
    # Откатить изменения
    change_column :posts, :description, :string
  end
end
