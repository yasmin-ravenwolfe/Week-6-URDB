class Role < ActiveRecord::Base
  belongs_to :star
  belongs_to :movie
end
