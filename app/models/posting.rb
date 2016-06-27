class Posting < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
end
