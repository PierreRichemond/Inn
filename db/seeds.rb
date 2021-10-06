# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.delete_all
  puts "Rooms destroyed"

room1 = Room.create(name: "Gîte Ronsard",
                  ppl: "165 m² – couchage : 6 adultes + 3 enfants",
                  price: 210,
                  description: "Idéal pour vos retrouvailles en famille et entre amis, le gite Ronsard vous invite au repos. Un grand salon de 60 m², sa cheminée et son cachet à l’ancienne vous permettront de profiter du calme de la campagne.",
                  details: "
                Grand salon / salle à manger.
                - Cuisine, sellier, wc.",
                  detailz:"
                Une grande suite parentale avec salle de bain : 2 adultes + 3 lits enfants.
                - Deux chambres doubles.
                - Couloir avec salle de douche et wc séparés.")
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")


room2 = Room.create(name: "Gîte Rabelais",
                  ppl: "155m² – couchage : 10/12 personnes",
                  price: 230,
                  description: "Plutôt moderne, le gite Rabelais s’accorde parfaitement avec vos soirées festives. Une belle salle de réception avec sa mezzanine et sa grande table vous permettront d’accueillir facilement une trentaine de convives.",
                  details: "
                    Une suite parentale avec salle de bain.
                    - Une chambre double.
                    - Salle de douche et wc dans le couloir.
                    - Salle de réception avec cuisine équipée à l’américaine.
                    - Mezzanine.",
                  detailz: "
                   Dortoir de 50 m²: 4 lits.
                   - 1 salle de douche.")
                    room2.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room2.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room2.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")

room3 = Room.create(name: "L’ensemble du Clos Vallière",
                  ppl: "320 m² - couchage : 18/20 personnes",
                  price: 400,
                  description: "Profitez de l’ensemble de cette demeure tourangelle et de ses avantages. Un mariage ? Un enterrement de vie de garçon/jeune fille ? Un séminaire ou une rencontre professionnelle ? Plus de 300 m² d’espaces de vie, vous permettront d’accueillir un grand nombre de convives.",
                  details: "
                Grand salon / salle à manger.
                - Cuisines à l'ancienne, sellier, 2wc.
                - Une suite parentale avec salle de bain.
                - Une chambre double avec salle de douche.
                - Salle de réception avec cuisine équipée à l’américaine.
                - Mezzanine.",
                detailz: "
                  Une grande suite parentale avec salle de bain : 2 adultes + 3 lits enfants.
                - Deux chambres doubles.
                - 2 Salle de douche, 2wc.
                - Dortoir de 50 m²: 4 lits.")

                  puts "#{Room.count} created"

room3.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room3.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room3.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")
