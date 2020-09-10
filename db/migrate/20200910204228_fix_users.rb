class FixUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :reset_password_token
    add_index :users, :reset_password_token, unique: false
  end
end
