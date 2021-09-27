class AddStoreIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :store_id, :integer
    add_index :products, :store_id
  end
end
