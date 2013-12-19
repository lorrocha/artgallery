class CreateArtcollections < ActiveRecord::Migration
  def change
    create_table :artcollections do |t|
      t.integer :collection_id, null:false
      t.integer :artwork_id, null:false

      t.timestamps
    end
  end
end
