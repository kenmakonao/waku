class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text :icon_id,null: false
      t.text :explanation, null: false

      t.timestamps
    end
  end
end
