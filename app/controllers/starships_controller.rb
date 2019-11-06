# frozen_string_literal: true

class StarshipsController < ApplicationController
  def index
    @starships = Starship.order(:name).page params[:page]
  end

  def show
    @starship = Starship.find(params[:id])
  end

  def starship_category; end

  def starship_new; end

  def starship_refurbished; end

  def starship_params
    params.require(:starship).permit(:name, :description, :search, :type, :id)
  end
end
