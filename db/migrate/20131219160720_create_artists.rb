class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null:false
      t.string :email, null:false
      t.string :birthplace
      t.integer :style_id

      t.timestamps
    end
  end
end
