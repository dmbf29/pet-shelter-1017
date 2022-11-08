puts 'Cleaning out the DB...'
Pet.destroy_all

puts 'Creating pets...'
30.times do
  Pet.create!(
    name: Faker::Games::Pokemon.name,
    species: Pet::SPECIES.sample,
    address: Faker::Games::Pokemon.location,
    found_on: Date.today - rand(1..15)
  )
end
puts "... created #{Pet.count} pets."
