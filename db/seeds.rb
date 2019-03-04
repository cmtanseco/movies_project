# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Actor.destroy_all
Movie.destroy_all
Director.destroy_all
MovieActor.destroy_all
Faker::Name.unique.clear
Faker::Superhero::unique.clear
Faker::FunnyName::unique.clear
Faker::UniqueGenerator.clear


50.times do
  director = Director.create!(name: Faker::Name::unique.name,
                             networth: Faker::Number.between(30000,6000000))

  puts director.inspect
  number_of_movies = rand(1..3)

  number_of_movies.times do
    new_movie = director.movies.create!(name: Faker::Superhero::unique.name,
                           budget: Faker::Number.between(60000, 500000000),
                           worldwide_gross: Faker::Number.between(10000, 2800000000))

    number_of_actors = rand(4..10)

    number_of_actors.times do
      actor = Actor.create!(name: Faker::FunnyName::unique.name,
                            networth: Faker::Number.between(20000, 450000000))

      MovieActor.create!(actor_id: actor.id,
                         movie_id: new_movie.id)
    end
  end

end

Actor.all.size.times do
  rand_movie
end

# 80.times do
#   actor = Actor.create!(name: Faker::FunnyName::unique.name,
#                         networth: Faker::Number.between(20000, 450000000))

#   movie_number = rand(1..5)

#     movie_number.times do
#       MovieActor.create!(actor_id: actor.id,
#                          movie_id: Faker::Number.between(1, 50))
#     end
# end

puts "Number of Directors: #{Director.count}"
puts "Number of Movies: #{Movie.count}"
puts "Movie actors: #{MovieActor.count}"
puts "Number of Actors: #{Actor.count}"