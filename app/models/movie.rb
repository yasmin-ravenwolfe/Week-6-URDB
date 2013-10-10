class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles
  validates :title, presence: true

  def rotten_finder
    rotten_finder_return = @movie =  RottenMovie.find(title: title, limit: 1)
  end
  
  def snippet
    description.to_s.truncate 50
  end

  def audience_rating
    rotten_finder_return = self.rotten_finder
    if rotten_finder_return == []
      return nil
    else
      rotten_finder_return.ratings.audience_score
    end
  end
end
