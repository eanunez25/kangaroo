class DropBullPutSpreadTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :bullputspread
  end
end
