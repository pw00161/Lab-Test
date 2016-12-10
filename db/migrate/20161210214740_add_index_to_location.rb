class AddIndexToLocation < ActiveRecord::Migration
  def change
    add_index :locations, :title, unique: true
  end
end
