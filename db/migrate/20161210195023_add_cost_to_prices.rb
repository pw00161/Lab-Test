class AddCostToPrices < ActiveRecord::Migration
  def change
    change_column :prices, :cost,  :float
  end
end
