class AddColumnPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :price, :decimal, precision: 10, scale: 2
  end
end
