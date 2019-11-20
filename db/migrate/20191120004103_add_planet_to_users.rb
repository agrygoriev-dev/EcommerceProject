# frozen_string_literal: true

class AddPlanetToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :planet, null: true, foreign_key: true
  end
end
