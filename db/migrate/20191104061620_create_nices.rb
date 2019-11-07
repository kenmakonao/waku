class CreateNices < ActiveRecord::Migration[5.2]
  def change
    create_table :nices do |t|
      t.integer :article_id
      t.integer :user_id
      t.integer :nice

      t.timestamps
    end
  end
end
