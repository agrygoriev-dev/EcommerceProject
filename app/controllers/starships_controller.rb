# frozen_string_literal: true

class StarshipsController < ApplicationController
  def index
    @starships = Starship.order(:name).page params[:page]
  end

  def show
    @starship = Starship.find(params[:id])
  end

  def starship_category
    @starships = Starship.search(params[:search], params[:type])
  end

  def starship_new
    @starships = Starship.where('is_new = 1')
  end

  def starship_refurbished
    @starships = Starship.where('is_refurbished = 1')
  end

  def starship_params
    params.require(:starship).permit(:name, :description, :search, :type, :id)
  end
end
