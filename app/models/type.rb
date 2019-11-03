# frozen_string_literal: true

class Type < ApplicationRecord
  has_many :starships
  validates :name, presence: true
end
