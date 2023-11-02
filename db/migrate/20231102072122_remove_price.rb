class RemovePrice < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :price
  end
end
