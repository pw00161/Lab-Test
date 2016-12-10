class AddIndexToPrices < ActiveRecord::Migration
  def change
    add_index :prices, :title, unique: true
  end
end
