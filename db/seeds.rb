# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

room1 = Room.new(name: "Gîte Ronsard",
                  ppl: "165 m² – couchage : 6 adultes + 3 enfants",
                  price: 210,
                  description: "Idéal pour vos retrouvailles en famille et entre amis, le gite Ronsard vous invite au repos. Un grand salon de 60 m², sa cheminée et son cachet à l’ancienne vous permettront de profiter du calme de la campagne.",
                  details: "Rez-de-chaussée:
                - Grand salon / salle à manger.
                - Cuisine, sellier, wc.

                Etage:
                - Une grande suite parentale avec salle de bain : 2 adultes + 3 lits enfants.
                - Deux chambres doubles.
                - Couloir avec salle de douche et wc séparés.")

room2 = Room.new(name: "Gîte Rabelais",
                  ppl: "155m² – couchage : 10/12 personnes",
                  price: 230,
                  description: "Plutôt moderne, le gite Rabelais s’accorde parfaitement avec vos soirées festives. Une belle salle de réception avec sa mezzanine et sa grande table vous permettront d’accueillir facilement une trentaine de convives.",
                  details: "Rez-de-chaussée:
                    - Une suite parentale avec salle de bain.
                    - Une chambre double.
                    - Salle de douche et wc dans le couloir.
                    - Salle de réception avec cuisine équipée à l’américaine.
                    - Mezzanine.

                    Etage:
                    - Dortoir : 50 m².
                    - Salle de douche.")

room3 = Room.new(name: "L’ensemble du Clos Vallière",
                  ppl: "320 m² - couchage : 18/20 personnes",
                  price: 400,
                  description: "Profitez de l’ensemble de cette demeure tourangelle et de ses avantages. Un mariage ? Un enterrement de vie de garçon/jeune fille ? Un séminaire ou une rencontre professionnelle ? Plus de 300 m² d’espaces de vie, vous permettront d’accueillir un grand nombre de convives.",
                  details: "
                  - Un grand salon + une salle de réception.
                  - Deux suites parentales avec salle de bain.
                  - Trois chambres doubles.
                  - Un dortoir.
                  - Trois salles de douche.")
