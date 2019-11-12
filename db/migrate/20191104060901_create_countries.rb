class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.integer :continent_id
      t.text :photo_id, null: false
      t.string :name, null: false
      t.string :latitude
      t.string :longitude
      t.string :money, null: false
      t.string :time_difference
      t.string :world_heritage, null: false
      t.string :language, null: false


      t.timestamps
    end
  end
end
