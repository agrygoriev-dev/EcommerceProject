class Shipplanet < ApplicationRecord
  belongs_to :starship
  belongs_to :planet
end
