# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :shipplanets
  validates :name, presence: true
end
