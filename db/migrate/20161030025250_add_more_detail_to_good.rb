class AddMoreDetailToGood < ActiveRecord::Migration[5.0]
  def change
    add_column :goods, :stuff_size, :string
    add_column :goods, :stuff_price, :integer
    add_column :goods, :stuff_quantity, :integer 
  end
end
