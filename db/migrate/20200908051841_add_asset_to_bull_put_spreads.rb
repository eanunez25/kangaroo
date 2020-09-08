class AddAssetToBullPutSpreads < ActiveRecord::Migration[6.0]
  def change
    add_column :bull_put_spreads, :asset, :string
  end
end
