# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :initialize_session_order

  def show_cart
    @starships = Starship.find(session[:cart].keys)
    @cart = session[:cart]
    @user = current_user
    @debug = session[:debug]
  end

  def delete_from_cart
    session[:debug] ||= []
    session[:cart].delete(params[:id])
    redirect_to show_cart_path
  end

  def change_quantity
    amount = params[:quantity].to_i
    quantity = session[:cart][params[:id]].to_i
    quantity += amount
    session[:cart][params[:id]] = quantity
    redirect_to show_cart_path
  end

  def starship_params
    params.require(:starship).permit(:name, :description, :search, :type, :id, :quantity)
  end

  private

  def initialize_session_order
    session[:debug] ||= []
  end
end
