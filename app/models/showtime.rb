class Showtime < ActiveRecord::Base
  validates :location, presence: true
  belongs_to :movie
end
