# frozen_string_literal: true

class Starship < ApplicationRecord
  belongs_to :type
  has_many :shipplanets, dependent: :delete_all
  has_many :planets, through: :shipplanets
  has_many :orderproducts, dependent: :delete_all

  validates :name, :price, presence: true
  validates :price, :length, :speed, numericality: true

  has_one_attached :image
end
