# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :orders
  validates :name, :email_address, presence: true
end
