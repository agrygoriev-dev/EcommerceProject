# frozen_string_literal: true

class Planet < ApplicationRecord
  validates :name, presence: true
end
