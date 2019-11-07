class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.string :title, null: false
      t.integer :country_id
      t.date :period, null: false
      t.string :theme, null: false
      t.text :memo
      t.text :photo_id
      t.boolean :complete
      t.date :start_day, null: false
      t.date :finish_day,  null: false
      t.string :date,  null: false
      t.timestamps
    end
  end
end
