class Movie < ActiveRecord::Base
  has_many  :showings

  def snippet
    self.description.truncate 50

  end
end
