class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :info
      t.string :photo
      t.float :price
      t.integer :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
