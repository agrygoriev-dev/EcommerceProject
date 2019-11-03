# frozen_string_literal: true

class Starship < ApplicationRecord
  belongs_to :type
  validates :name, :price, presence: true
  validates :price, :length, :speed, numericality: true
end
