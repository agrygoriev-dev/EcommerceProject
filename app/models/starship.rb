# frozen_string_literal: true

class Starship < ApplicationRecord
  belongs_to :type
  has_many :shipplanets
  has_many :planets, through: :shipplanets
  has_many :orderproducts

  validates :name, :price, presence: true
  validates :price, :length, :speed, numericality: true
end
