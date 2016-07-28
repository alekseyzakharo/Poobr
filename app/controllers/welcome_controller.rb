class WelcomeController < ApplicationController

  # GET /postings
  # GET /postings.json
  def index
    @postings = Posting.all
    @hash = Gmaps4rails.build_markers(@postings) do |posting, marker|
        marker.lat posting.latitude
        marker.lng posting.longitude
        marker.infowindow posting.description
        marker.picture({
              :url => "https://chart.googleapis.com/chart?chst=d_map_pin_icon&chld=wc|2E9AFE",
              "width" => 20,
              "height" => 33
              })
        marker.json({ title: posting.title, description: posting.description })
    end
  end
end
