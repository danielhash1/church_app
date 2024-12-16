class DeviseCreateUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users, bulk: true do |t|
      ## Если email уже есть, пропустите его
      unless column_exists?(:users, :email)
        t.string :email, null: false, default: ""
      end

      ## Добавляем только отсутствующие столбцы Devise:
      unless column_exists?(:users, :encrypted_password)
        t.string :encrypted_password, null: false, default: ""
      end

      unless column_exists?(:users, :reset_password_token)
        t.string   :reset_password_token
        t.datetime :reset_password_sent_at
      end

      unless column_exists?(:users, :remember_created_at)
        t.datetime :remember_created_at
      end

      ## Индексы
      unless index_exists?(:users, :email, unique: true)
        t.index :email, unique: true
      end

      unless index_exists?(:users, :reset_password_token, unique: true)
        t.index :reset_password_token, unique: true
      end
    end
  end
end
