# frozen_string_literal: true

class Page < ApplicationRecord
  validates :title, presence: true
end
