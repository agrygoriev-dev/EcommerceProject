# frozen_string_literal: true

class Starship < ApplicationRecord
  belongs_to :type
  has_many :shipplanets
  validates :name, :price, presence: true
  validates :price, :length, :speed, numericality: true
end
