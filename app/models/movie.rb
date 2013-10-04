class Movie < ActiveRecord::Base
  validates :title, presence: true

  has_many :showings

  def snippet
    self.description.truncate 50
  end
end
