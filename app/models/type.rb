# frozen_string_literal: true

class Type < ApplicationRecord
  validates :name, presence: true
end
