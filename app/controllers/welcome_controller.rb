class WelcomeController < ApplicationController

  # GET /postings
  # GET /postings.json
  def index
    @postings = Posting.all
    @hash = Gmaps4rails.build_markers(@postings) do |posting, marker|
        marker.lat posting.latitude
        marker.lng posting.longitude
        marker.infowindow posting.description
    end
  end
end
