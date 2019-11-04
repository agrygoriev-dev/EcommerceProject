# frozen_string_literal: true

ActiveAdmin.register Starship do
  permit_params :name, :description, :speed, :length, :price, :is_new, :is_refurbished, :type_id, :image, planet_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :speed
    column :length
    column :price
    column :is_new
    column :is_refurbished
    column :type
    column :planets do |ship|
      table_for ship.planets.order('name ASC') do
        column do |planet|
          link_to planet.name, [:admin, planet]
        end
      end
    end
  end

  show do
    attributes_table do
      row :name
      row :description
      row :speed
      row :length
      row :price
      row :is_new
      row :is_refurbished
      row :type
      table_for starship.planets.order('name ASC') do
        column 'Planets' do |planet|
          link_to planet.name, [:admin, planet]
        end
      end
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
      f.input :planet_ids, as: :check_boxes, collection: Planet.all
    end
    f.actions
  end
end
