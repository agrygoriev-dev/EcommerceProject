# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  has_many :orderproducts
end
