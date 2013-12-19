class CreateFavoritecollections < ActiveRecord::Migration
  def change
    create_table :favoritecollections do |t|
      t.integer :customer_id, null:false
      t.integer :collection_id, null:false

      t.timestamps
    end
  end
end
