# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :initialize_session

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :address, :planet, :planet_id) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address, :planet, :planet_id) }
  end

  private

  def initialize_session
    session[:cart] ||= {}
  end

  def load_cart
    @cart = Starship.find(session[:cart].keys)
  end
end
