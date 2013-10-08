# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  { title: "Gladiator",
    poster_url: "http://www.movieposter.com/posters/archive/main/22/A70-11370",
    trailer_url: "http://youtu.be/ol67qo3WhJk",
    description: "When a Roman general is betrayed and his family murdered by an emperor's corrupt son, he comes to Rome as a gladiator to seek revenge."
  },
  { title: "Hackers",
    poster_url: "http://www.movieposter.com/posters/archive/main/79/MPW-39928",
    trailer_url: "http://youtu.be/pP6iTjhlOvs",
    description: "A young boy is arrested by the US Secret Service for writing a computer virus and is banned from using a computer until his 18th birthday. Years later, he and his new-found friends discover a plot to unleash a dangerous computer virus, but they must use their computer skills to find the evidence while being pursued by the Secret Service and the evil computer genius behind the virus."
  },
  {
    title: "The Social Network",
    poster_url: "http://www.movieposter.com/posters/archive/main/109/MPW-54712",
    trailer_url: "http://youtu.be/lB95KLmpLR4",
    description: "Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the cofounder who was later squeezed out of the business."
  },
  {
    title: "Pirates of Silicon Valley",
    poster_url: "http://i2.listal.com/image/34728/600full-pirates-of-silicon-valley-poster.jpg",
    trailer_url: "http://youtu.be/lEyrivrjAuU",
    description: "The revolution came when we weren't looking. It happened in a garage. In a dorm room. In countless hours of effort, imagining and intrigue. Apple co-founder Steve Jobs and Microsoft co-founder Bill Gates were changing the way the world works, lives and communicates."
  },
  {
    title: "Swordfish",
    poster_url: "http://www.movieposter.com/posters/archive/main/3/MPW-1879",
    trailer_url: "http://youtu.be/mfLizCqjz18",
    description: "A secretive renegade counter-terrorist co-opts the world's greatest hacker (who is trying to stay clean) to steal billions in US Government dirty money."
  }
]



# ---------- day 3 seeds!!!

movies.each do |movie|
  Movie.create(movie)
end

days_of_summer = Movie.create({
    title: "(500) Days of Summer",
    poster_url: "http://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Five_hundred_days_of_summer.jpg/220px-Five_hundred_days_of_summer.jpg",
    trailer_url: "http://youtu.be/PsD0NpFSADM",
    description: "An offbeat romantic comedy about a woman who doesn't believe true love exists, and the young man who falls for her."
  })

yes_man = Movie.create({
    title: "Yes Man",
    poster_url: "http://upload.wikimedia.org/wikipedia/en/thumb/7/71/YesMan2008poster.jpg/220px-YesMan2008poster.jpg",
    trailer_url: "http://youtu.be/rvpsiIe2vBE",
    description: "A guy challenges himself to say 'yes' to everything for an entire year."
  })




jim_carrey = Star.create(name: 'Jim Carrey',
                      headshot_url: 'http://upload.wikimedia.org/wikipedia/commons/8/8b/Jim_Carrey_2008.jpg',
                      bio: 'Jim Carrey, a Canadian-born actor who became a naturalized American citizen in 2004, is an actor and producer famous for his rubbery body movements and flexible facial expressions.')

zooey = Star.create(name: 'Zooey Deschanel',
                      headshot_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Zooey_Deschanel_2009.jpg/220px-Zooey_Deschanel_2009.jpg',
                      bio: 'Zooey Deschanel writes music, sings, and acts on screens, small and big. She is one half of the indie folk band She & Him.')

joseph = Star.create(name: 'Joseph Gordon-Levitt',
                      headshot_url: 'http://upload.wikimedia.org/wikipedia/commons/3/39/Joseph_Gordon-Levitt_TIFF_2012.jpg',
                      bio: 'Joseph Gordon-Levitt is an American actor, director, producer, and writer. As a child star, he appeared in the films A River Runs Through It, Angels in the Outfield, Beethoven, and 10 Things I Hate About You, and as Tommy Solomon in the TV series 3rd Rock from the Sun.')


yes_man.roles.create(character: 'Carl', star: jim_carrey)
yes_man.roles.create(character: 'Allison', star: zooey)

days_of_summer.roles.create(character: 'Tom', star: joseph)
days_of_summer.roles.create(character: 'Summer', star: zooey)






