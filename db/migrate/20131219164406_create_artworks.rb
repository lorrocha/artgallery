class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name, null:false
      t.integer :artist_id, null:false
      t.date :date_of_creation
      t.date :date_put_on_market
      t.float :cost
      t.integer :type_id
      t.integer :sale_id
      t.boolean :available, default:true

      t.timestamps
    end
  end
end
