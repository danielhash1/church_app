class AddPositionToMinistries < ActiveRecord::Migration[7.1]
  def change
    add_column :ministries, :position, :integer
  end
end
