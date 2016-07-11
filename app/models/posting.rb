class Posting < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

    validates :title, presence: true
    validates :address, presence: true
    validates :description, presence: true, length: { minimum: 6 }


end
