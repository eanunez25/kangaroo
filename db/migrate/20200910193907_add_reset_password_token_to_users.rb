class AddResetPasswordTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :reset_password_token, :integer
  end
end
