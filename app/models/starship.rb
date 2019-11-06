# frozen_string_literal: true

class Starship < ApplicationRecord
  paginates_per 6
  belongs_to :type
  has_many :shipplanets, dependent: :delete_all
  has_many :planets, through: :shipplanets
  has_many :orderproducts, dependent: :delete_all

  validates :name, :price, presence: true
  validates :price, :length, :speed, numericality: true

  has_one_attached :image

  def self.search(search, type)
    if !type.blank?
      by_type = Type.find(type)
      starships = by_type.starships
    else
      starships = Starship.all
    end

    if search
      starships.where('name like ?', "%#{search}%")
    else
      starships.order(:name)
    end
  end
end
