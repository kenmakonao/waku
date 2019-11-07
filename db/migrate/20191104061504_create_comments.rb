class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :schedule_id
      t.string :title, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
