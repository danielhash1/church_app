class CreateMinistries < ActiveRecord::Migration[7.1]
  def change
    create_table :ministries do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :schedule

      t.timestamps
    end
  end
end