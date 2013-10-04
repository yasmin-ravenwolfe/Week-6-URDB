class Showing < ActiveRecord::Base
  belongs_to :movie

  def time=(input)
    self[:time] = Chronic.parse(input)
  end
end
