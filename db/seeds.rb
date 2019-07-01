# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Planet.destroy_all
UserPlanet.destroy_all

kevin = User.create(username: 'Kevin', password: 'lol')




mercury = Planet.create(name: 'Mercury', likes: 0, diameter: '4,878', mass: 0.06, orbital_period: '88', day_length: '4,222.6', sun_distance: 57.9, temperature: 167, moons: 0)
venus = Planet.create(name: 'Venus', likes: 0, diameter: '12,104', mass: 0.82, orbital_period: '225', day_length: '2,802.0', sun_distance: 108.2, temperature: 464, moons: 0)
earth = Planet.create(name: 'Earth', likes: 0, diameter: '12,756', mass: 1.00, orbital_period: '365', day_length: '24.0', sun_distance: 149.6, temperature: 15, moons: 1)
mars = Planet.create(name: 'Mars', likes: 0, diameter: '6,792', mass: 0.11, orbital_period: '687', day_length: '708.7', sun_distance: 227.9, temperature: -65, moons: 2)
jupiter = Planet.create(name: 'Jupiter', likes: 0, diameter: '142,984', mass: 317.89, orbital_period: '4,331', day_length: '9.9',  sun_distance: 778.6, temperature: -110, moons: 79)
saturn = Planet.create(name: 'Saturn', likes: 0, diameter: '120,536', mass: 95.17, orbital_period: '10,747', day_length: '10.7', sun_distance: 1433.5, temperature: -140, moons: 62)
uranus = Planet.create(name: 'Uranus', likes: 0, diameter: '51,118', mass: 0.11, orbital_period: '30,589', day_length: '17.2', sun_distance: 2872.5, temperature: -167, moons: 27)
neptune = Planet.create(name: 'Neptune', likes: 0, diameter: '49,528', mass: 17.24, orbital_period: '59,800', day_length: '16.1',  sun_distance: 4495.1, temperature: -200, moons: 14)



UserPlanet.create([
  { user: kevin, planet: mars},
  { user: kevin, planet: neptune}
])



# UserPlanet.create(user_id: kevin.id, planet_id: mercury.id, vote_count: 14, new_planet_name: 'hello')
# UserPlanet.create(user_id: kevin.id, planet_id: earth.id, vote_count: 23, new_planet_name: 'football')
# UserPlanet.create(user_id: richie.id, planet_id: venus.id, vote_count: 43, new_planet_name: 'dude')
# UserPlanet.create(user_id: richie.id, planet_id: mars.id, vote_count: 30, new_planet_name: 'sup')