# frozen_string_literal: true

class CreateOrderproducts < ActiveRecord::Migration[6.0]
  def change
    create_table :orderproducts do |t|
      t.references :order, null: true, foreign_key: true
      t.references :starship, null: true, foreign_key: true
      t.integer :amount
      t.decimal :unit_price

      t.timestamps
    end
  end
end
