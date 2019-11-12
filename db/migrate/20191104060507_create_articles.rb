class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :schedule_id
      t.integer :category_id
      t.string :date, null: false
      t.time :start_time, null: false
      t.time :finish_time
      t.string :title, null: false
      t.text :memo
      t.float :evaluation
      t.text :photo_id
      t.boolean :complete
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
