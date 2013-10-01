# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do 
  Movie.create(
    title: 'The Gladiator',
    gif_url: 'http://www.reactiongifs.com/wp-content/uploads/2011/12/Gladiator_Thumb_Down_01.gif',
    trailer_url: 'http://www.youtube.com/watch?v=ol67qo3WhJk',
    description: "When a Roman general is betrayed and his family murdered by an emperor's corrupt son, he comes to Rome as a gladiator to seek revenge."
  )
end