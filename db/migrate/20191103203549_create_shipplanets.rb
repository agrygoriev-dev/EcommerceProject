# frozen_string_literal: true

class CreateShipplanets < ActiveRecord::Migration[6.0]
  def change
    create_table :shipplanets do |t|
      t.references :starship, null: true, foreign_key: true
      t.references :planet, null: true, foreign_key: true

      t.timestamps
    end
  end
end
