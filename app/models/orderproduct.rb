# frozen_string_literal: true

class Orderproduct < ApplicationRecord
  belongs_to :order
  belongs_to :starship

  validates :amount, :unit_price, presence: true
end
