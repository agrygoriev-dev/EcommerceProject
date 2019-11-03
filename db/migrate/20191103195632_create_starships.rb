class CreateStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :description
      t.decimal :speed
      t.decimal :length
      t.decimal :price
      t.boolean :is_new
      t.boolean :is_refurbished
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
