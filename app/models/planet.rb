# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :shipplanets
  has_many :users
  has_many :starships, through: :shipplanets
  validates :name, presence: true
end
