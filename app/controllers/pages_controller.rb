# frozen_string_literal: true

class PagesController < ApplicationController
  def about
    @about = Page.find_by_permalink('about_us')
  end

  def contact
    @contact = Page.find_by_permalink('contact')
  end
end
