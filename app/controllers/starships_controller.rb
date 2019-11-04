class StarshipsController < ApplicationController
  def index
    @starships = Starship.order(:name)
  end

  def show
  end

  def starship_category
  end

  def starship_new
  end

  def starship_refurbished
  end
end
