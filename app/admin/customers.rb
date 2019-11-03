# frozen_string_literal: true

ActiveAdmin.register Customer do
  permit_params :name, :phone_number, :email_address, :details, :password
end
