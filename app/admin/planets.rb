# frozen_string_literal: true

ActiveAdmin.register Planet do
  permit_params :name, :description, :population
end
