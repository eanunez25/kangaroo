class AddUserIdToBullPutSpread < ActiveRecord::Migration[6.0]
  def change
    add_column :bull_put_spreads, :user_id, :integer
  end
end
