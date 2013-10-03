class Movie < ActiveRecord::Base
  validates :title, presence: true

  def snippet
    self.description.truncate 50
  end
end
