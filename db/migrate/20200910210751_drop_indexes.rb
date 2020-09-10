class DropIndexes < ActiveRecord::Migration[6.0]
  def change
    remove_index :users, :email
    remove_index :users, :reset_password_token
  end
end
