# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :name, :email_address, presence: true
end
