class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles
  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end
  
  def snippet
    description.to_s.truncate 50
  end

  def audience_rating
    rotten_finder.ratings.audience_score unless rotten_finder.empty?
  end

  def self.average_rating
    # get all movie scores
    scores = self.all.collect do |movie|
      movie.audience_rating
    end
    if scores == nil
      return nil
    # add all movie scores together
    else
      score_sum = scores.compact.sum
    # these two methods work too
    # score_sum = 0
    # scores.each{|s| score_sum += s}
    # score_sum = scores.inject(0,:+)
    # divide by number of movies
      score_average = score_sum  / scores.length
    end
  end

end


