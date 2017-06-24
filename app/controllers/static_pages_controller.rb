class StaticPagesController < ApplicationController

  add_breadcrumb 'Home', '#'
  def home
  end

  def help
  end

  def layout_sample
  end

  def retail_law
    add_breadcrumb '特定商取引法に基づく', '#'
  end

  def privacy
  end

  def recruit
  end

  def location
  end

  def admin_test
  end

  def access
    @places = Array.new
    @places.push({
                   :latitude    => 12.922723,
                   :longitude   => 100.884987,
                   :description => 'Lawinta Hotel',
                   :title       => 'Lawinta Hotel'
                 })

    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place[:latitude]
      marker.lng place[:longitude]
      marker.infowindow place[:description]
      marker.json({title: place[:title]})
    end
  end

  def floor_map
  end
end
