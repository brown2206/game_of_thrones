# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


House.destroy_all
Character.destroy_all

House.create!([
  {name: "Lannister",img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048 "}
  ])

instance = House.first
instance.characters.create(name: "Tyrion", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/9/9d/Tyrion6x082.png/revision/latest?cb=20160609061404")
