Room.delete_all
  puts "Rooms destroyed"
Activity.delete_all
  puts "activities destroyed"

room1 = Room.create(name: "Gîte Ronsard",
                  price: 210)
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room1.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")

  room1.set_ppl('fr', "165 m² – couchage : 6 adultes + 3 enfants")
  room1.set_ppl('en', "165 m² - bed: 6 adults + 3 children")
  room1.set_description('fr', "Idéal pour vos retrouvailles en famille et entre amis, le gite Ronsard vous invite au repos. Un grand salon de 60 m², sa cheminée et son cachet à l’ancienne vous permettront de profiter du calme de la campagne.")
  room1.set_description('en', "Ideal for your reunion with family and friends, the Ronsard gîte invites you to rest. A large living room of 60 m², it's fireplace and its old style will allow you to enjoy the peace of the countryside.")
  room1.set_details('fr', "Grand salon / salle à manger.
                - Cuisine, sellier, wc.")
  room1.set_details('en', "Large living / dining room.
                 - Kitchen, saddler, wc")
  room1.set_detailz('fr', "Une grande suite parentale avec salle de bain : 2 adultes + 3 lits enfants.
                - Deux chambres doubles.
                - Couloir avec salle de douche et wc séparés.")
  room1.set_detailz('en', "A large parental suite with bathroom: 2 adults + 3 children's beds.
                 - Two double bedrooms.
                 - Corridor with separate shower room and wc.")


room2 = Room.create(name: "Gîte Rabelais",
                  price: 230)
room2.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room2.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room2.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")


  room2.set_ppl('fr', "155m² – couchage : 10/12 personnes")
  room2.set_ppl('en', "165 m² - bed: 10/12 people")
  room2.set_description('fr', "Plutôt moderne, le gite Rabelais s’accorde parfaitement avec vos soirées festives. Une belle salle de réception avec sa mezzanine et sa grande table vous permettront d’accueillir facilement une trentaine de convives.")
  room2.set_description('en', "Rather modern, the Rabelais cottage goes perfectly with your festive evenings. A beautiful reception room with its mezzanine and large table will easily accommodate around thirty guests.")
  room2.set_details('fr', " Une suite parentale avec salle de bain.
                    - Une chambre double.
                    - Salle de douche et wc dans le couloir.
                    - Salle de réception avec cuisine équipée à l’américaine.
                    - Mezzanine.")
  room2.set_details('en', "A parental suite with bathroom.
                     - A double room.
                     - Shower room and wc in the hallway.
                     - Reception room with American style kitchen.
                     - Mezzanine.")
  room2.set_detailz('fr', "Dortoir de 50 m²: 4 lits.
                   - 1 salle de douche.")
  room2.set_detailz('en', "50 m² dormitory: 4 beds.
                    - 1 shower room.")

room3 = Room.create(name: "Clos Vallière",
                  price: 400)

  room3.set_ppl('fr', "320 m² - couchage : 18/20 personnes")
  room3.set_ppl('en', "320 m² - bed : 18/20 people")
  room3.set_description('fr', "Profitez de l’ensemble de cette demeure tourangelle et de ses avantages. Un mariage ? Un enterrement de vie de garçon/jeune fille ? Un séminaire ou une rencontre professionnelle ? Plus de 300 m² d’espaces de vie, vous permettront d’accueillir un grand nombre de convives.")
  room3.set_description('en', "Enjoy all of this Touraine residence and its advantages. A marriage ? A bachelorette party? A seminar or a professional meeting? More than 300 m² of living space, will allow you to accommodate a large number of guests.")
  room3.set_details('fr', "  Grand salon / salle à manger.
                - Cuisines à l'ancienne, sellier, 2wc.
                - Une suite parentale avec salle de bain.
                - Une chambre double avec salle de douche.
                - Salle de réception avec cuisine équipée à l’américaine.
                - Mezzanine.")
  room3.set_details('en', "Large living / dining room.
                 - Old-fashioned kitchens, saddler, 2wc.
                 - A parental suite with bathroom.
                 - A double bedroom with shower room.
                 - Reception room with American style kitchen.
                 - Mezzanine.")
  room3.set_detailz('fr', " Une grande suite parentale avec salle de bain : 2 adultes + 3 lits enfants.
                - Deux chambres doubles.
                - 2 Salle de douche, 2wc.
                - Dortoir de 50 m²: 4 lits.")
  room3.set_detailz('en', "A large parental suite with bathroom: 2 adults + 3 children's beds.
                 - Two double bedrooms.
                 - 2 Shower room, 2 toilets.
                 - Dormitory of 50 m²: 4 beds.")

  room3.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
  filename: "favicon1.png",
  content_type: 'image/png')
  room3.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
  filename: "gite_de_qualite.png",
  content_type: 'image/png')
  room3.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
  filename: "leclosvaliere.png",
  content_type: 'image/png')

  puts "#{Room.count} rooms were created"


    amboise = Activity.create(name: "Château d’Amboise",
                              description: "Rattaché à la couronne en 1434, ce monument emblématique et ses jardins paysagers offrent un des plus remarquables panoramas sur la vallée de la Loire. Pour visiter le château, plusieurs parcours sont proposés aux visiteurs. Chacun d’entre eux porte un regard singulier son rayonnement politique et artistique européen à la Renaissance, les moments intimes de la vie des souverains, la vie quotidienne et les coulisses de la Cour. En 1516, Léonard de Vinci fut invité par François 1er à Amboise où il finira ses jours trois années plus tard. Pendant trois ans, pour célébrer le 500e anniversaire de sa présence, le château d’Amboise lui consacrera plusieurs événements.",
                              phone: "02 47 57 00 98",
                              url: "www.chateau-amboise.com",
                              address: "Mnt de l'Emir Abd el Kader, 37400 Amboise, France",
                              price: "13.5",
                              distance: "27km",
                              tag_list: "Culture"
                            )

    amboise.image.attach(io: File.open(Rails.root.join("app/assets/images/Amboise.jpg")),
    filename: "Amboise.jpg")

#     luce = Activity.create(name: "Le Château du Clos Lucé",
#                               description: "L’épopée de cette demeure de briques roses et de pierres de tuffeau, bâtie sur des fondations gallo-romaines, commence sous le règne de Louis XI, en 1471. Offert par le Roi à son favori Étienne le Loup, un ancien marmiton anobli, le château du Cloux à Amboise était entouré de fortifications. Le lieu est acheté par Charles VIII et devient alors la résidence de plaisance des rois de France. Le Roi transforme la forteresse médiévale en château d’agrément et fait construire un oratoire, pur joyau de l’architecture gothique, pour son épouse la reine Anne de Bretagne. Le jeune duc d’Angoulême, futur François Ier, y séjourne régulièrement. Devenu ensuite Clos-Lucé, il fut le lieu de résidence de Léonard de Vinci au cours des trois dernières années de sa vie.",
#                               phone: "02 47 57 00 73",
#                               url: "www.vinci-closluce.com",
#                               address: "2 Rue du Clos Lucé, 37400 Amboise, France",
#                               price: "17.5",
#                               distance: "27km",
#                               tag_list: "Culture"
#                             )

#     luce.image.attach(io: File.open(Rails.root.join("app/assets/images/ClosLuce.jpg")),
#     filename: "ClosLuce.jpg")


#     chambord = Activity.create(name: "Domaine National de Chambord",
#                               description: "Le château de Chambord est l’une des plus singulières constructions que le siècle de la Renaissance ait laissé. L’architecture est un savant mélange entre les éléments traditionnels de l’architecture médiévale française et ceux empruntés à la Renaissance italienne. Même si les quatre tours massives qui flanquent le donjon rappellent les forteresses médiévales, la conception du château et les éléments innovants qui le composent sont uniques. Le plan centré du donjon, l’emplacement de l’escalier à double révolution, la clarté géométrique des façades et leur ornementation, la symétrie des bâtiments, la présence de voûtes à caissons au deuxième étage font la singularité du monument.",
#                               phone: "02 54 50 40 00",
#                               url: "https://www.chambord.org/",
#                               address: "Château, 41250 Chambord, France",
#                               price: "14.5",
#                               distance: "60km",
#                               tag_list: "Culture"
#                             )

#     chambord.image.attach(io: File.open(Rails.root.join("app/assets/images/Chambord.jpg")),
#     filename: "Chambord.jpg")

#     ronsard = Activity.create(name: "Prieuré Saint-Cosme, demeure de Ronsard",
#                               description: "Le prieuré Saint-Cosme était considéré par les chanoines du 12e siècle comme « un paradis sur terre permettant d’atteindre plus facilement le vrai paradis ». Ronsard (1524- 1585) en fut le prieur durant les vingt dernières années de sa vie. Situé à La Riche, tout près de Tours, ce lieu a achevé sa métamorphose début 2015 après plusieurs années de travaux. Propriétés du Conseil général d’Indre-et-Loire depuis 1951, les jardins du prieuré ont été entièrement repensé avec une scénographie autour de l’univers du poète.",
#                               phone: "02 47 37 32 70",
#                               url: "www.prieure-ronsard.fr",
#                               address: "37520 La Riche, France",
#                               price: "6",
#                               distance: "21km",
#                               tag_list: "Culture"
#                             )

#     ronsard.image.attach(io: File.open(Rails.root.join("app/assets/images/prieure.jpg")),
#     filename: "prieure.jpg")


#     chenonceau = Activity.create(name: "Château de Chenonceau",
#                               description: "Administré et protégé par des femmes qui ont pour la plupart marqué l’Histoire, Chenonceau est connu comme le « Château des Dames ». De Katherine Briçonnet à Catherine de Médicis, cette empreinte féminine est présente de son architecture jusqu’à ses jardins.",
#                               phone: "08 20 20 90 90",
#                               url: "www.chenonceau.com",
#                               address: "37150 Chenonceaux, France",
#                               price: "15",
#                               distance: "37km",
#                               tag_list: "Culture"
#                             )

#     chenonceau.image.attach(io: File.open(Rails.root.join("app/assets/images/Chenonceau.jpg")),
#     filename: "Chenonceau.jpg")

#     azay = Activity.create(name: "Château d’Azay-le-Rideau",
#                               description: "Bâti sur une île au milieu de l’Indre sous le règne de François Ier, ce monument est le résultat d’une subtile alliance de traditions françaises et de décors innovants venus d’Italie. Depuis 2017, vous pouvez découvrir un château magnifié après trois ans de restauration.",
#                               phone: "02 47 45 42 04",
#                               url: "www.azay-le-rideau.fr",
#                               address: "Rue de Pineau, 37190 Azay-le-Rideau, France",
#                               price: "11.5",
#                               distance: "44km",
#                               tag_list: "Culture"
#                             )

#     azay.image.attach(io: File.open(Rails.root.join("app/assets/images/Azay.jpg")),
#     filename: "Azay.jpg")

#     chaumont = Activity.create(name: "Château de Chaumont-sur-Loire",
#                               description: "Propriété de la Région Centre-Val de Loire depuis 2007, le Domaine de Chaumont-sur-Loire est un véritable bijou de l’architecture Renaissance qui flotte au-dessus de la Loire entre Blois et Amboise. Au-delà d’une histoire très riche, le château est devenu un lieu de passage incontournable pour les amateurs d’art contemporain et de jardins paysagers. Chaque année, une nouvelle saison artistique prend place.",
#                               phone: "02 54 20 99 22",
#                               url: "www.domaine-chaumont.fr",
#                               address: "41150 Chaumont-sur-Loire, France",
#                               price: "14 ~ 19",
#                               distance: "35km",
#                               tag_list: "Culture"
#                             )

#     chaumont.image.attach(io: File.open(Rails.root.join("app/assets/images/Chaumont.jpg")),
#     filename: "Chaumont.jpg")

#     langeais = Activity.create(name: "Château de Langeais",
#                               description: "Avec son pont-levis en état de marche, son chemin de ronde, ses mâchicoulis et ses imposantes tours, le château de Langeais offre vers l’extérieur l’apparence d’un site défensif, tandis que la façade intérieure annonce la Renaissance. Vous y découvrirez la vie quotidienne d’un grand seigneur à la fin du Moyen Âge au travers d’une scénographie vivante qui restitue l’atmosphère et l’organisation d’une grande résidence seigneuriale.",
#                               phone: "02 47 96 72 60",
#                               url: "www.chateau-de-langeais.com",
#                               address: "Place Pierre de Brosse, 37130 Langeais, France",
#                               price: "11",
#                               distance: "41km",
#                               tag_list: "Culture"
#                             )

#     langeais.image.attach(io: File.open(Rails.root.join("app/assets/images/langeais.jpg")),
#     filename: "langeais.jpg")

#     villandry = Activity.create(name: "Château de Villandry",
#                               description: "Il s’agit du dernier des grands châteaux de la Loire érigés pendant la Renaissance. Son architecture et ses jardins remarquables font de ce monument l’un des fleurons du patrimoine mondial.",
#                               phone: "02 47 50 02 09",
#                               url: "www.chateauvillandry.fr",
#                               address: "3 Rue Principale, 37510 Villandry, France",
#                               price: "12",
#                               distance: "34km",
#                               tag_list: "Culture"
#                             )

#     villandry.image.attach(io: File.open(Rails.root.join("app/assets/images/villandry.jpg")),
#     filename: "villandry.jpg")


#   rabelais = Activity.create(name: "Musée Rabelais, Maison de la Devinière",
#     description: "Il s’agit du dernier des grands châteaux de la Loire érigés pendant la Renaissance. Son architecture et ses jardins remarquables font de ce monument l’un des fleurons du patrimoine mondial.",
#     phone: "02 47 95 91 18",
#     url: "www.musee-rabelais.fr",
#     address: "Musee Rabelais, 4 Rue de la Devinière, 37500 Seuilly, France",
#     price: "6",
#     distance: "70km",
#     tag_list: "Culture"
#   )

#   rabelais.image.attach(io: File.open(Rails.root.join("app/assets/images/Rabelais.jpg")),
#   filename: "Rabelais.jpg")

#   chinon = Activity.create(name: "Forteresse Royale de Chinon",
#     description: "Surplombant la ville, la forteresse construite par les Comtes d’Anjou et notamment les Plantagenêt évoque l’époque où l’Histoire de la France et celle de l’Angleterre étaient intimement mêlées. En 1429, elle est le théâtre de la rencontre historique entre Jeanne d’Arc et le Dauphin, futur Charles VII.",
#     phone: "02 47 93 13 45",
#     url: "www.forteressechinon.fr",
#     address: "2 Rue du Château, 37500 Chinon, France",
#     price: "9",
#     distance: "63km",
#     tag_list: "Culture"
#   )

#   chinon.image.attach(io: File.open(Rails.root.join("app/assets/images/Chinon.jpg")),
#   filename: "Chinon.jpg")


#   cuir = Activity.create(name: "Musée du cuir et de la tannerie",
#     description: "",
#     phone: "02 47 56 03 59",
#     url: "http://www.museeducuir.org/",
#     address: "105 rue de la republique, 37110 Château-Renault, France",
#     price: "",
#     distance: "10km",
#     tag_list: "Culture"
#   )

#   cuir.image.attach(io: File.open(Rails.root.join("app/assets/images/cuir.jpg")),
#   filename: "cuir.jpg")


#       # ------------------------------------------------loisir


#       aquarium = Activity.create(name: "Grand aquarium de Touraine",
#                                 description: "Des torrents des montagnes françaises aux mers lointaines, le Grand Aquarium de Touraine est le plus grand aquarium d’eau douce d’Europe. Découvrez tous ces écosystèmes à travers 63 aquariums et ses 2 millions de litres d’eau !",
#                                 phone: "02 47 23 44 57",
#                                 url: "www.grandaquariumdetouraine.com",
#                                 address: "37400 Lussault-Sur-Loire, France",
#                                 price: "28",
#                                 distance: "27km",
#                                 tag_list: "Loisir"
#                               )

#       aquarium.image.attach(io: File.open(Rails.root.join("app/assets/images/Aquarium.jpg")),
#       filename: "Aquarium.jpg")

#       zoo = Activity.create(name: "Zoo de Beauval",
#                                 description: "Sur plus de 40 hectares, le ZooParc de Beauval regroupe 10.000 animaux de 600 espèces différentes, dont les très rares pandas géants, uniques en France. À travers son association « Beauval Nature », le ZooParc participe activement à la préservation de la biodiversité, en soutenant plus de 40 programmes de conservation et de recherche dans le monde.",
#                                 phone: "02 54 75 50 00",
#                                 url: "www.zoobeauval.com",
#                                 address: "41110 Saint-Aignan, France",
#                                 price: "27 ~ 32",
#                                 distance: "60km",
#                                 tag_list: "Loisir"
#                               )

#       zoo.image.attach(io: File.open(Rails.root.join("app/assets/images/Beauval.jpg")),
#       filename: "Beauval.jpg")

#       safari = Activity.create(name: "Safari Train - la réserve de Beaumarchais",
#                                 description: "Au cœur du Val de Loire, à deux pas d’Amboise et de Chenonceaux, vivez un moment de détente et d'aventure en embarquant à bord du Safari Train, pour une étonnante traversée d'un parc d’élevage à la rencontre des grands gibiers.",
#                                 phone: "02 47 56 22 30",
#                                 url: "www.reserve-de-beaumarchais.com",
#                                 address: "37110 Autrèche, France",
#                                 price: "8.5",
#                                 distance: "16km",
#                                 tag_list: "Loisir"
#                               )

#       safari.image.attach(io: File.open(Rails.root.join("app/assets/images/Safari.jpg")),
#       filename: "Safari.jpg")

#       mongolfiere = Activity.create(name: "Un vol en Montgolfière ?",
#                                 description: "Survolez les châteaux du val de Loire en montgolfière et découvrez notre patrimoine culturel d’un point de vue sans pareil. De nombreuses entreprises vous proposent des circuits de trois heures environ et forcément dépendants du vent. À réserver en avance. Confirmation la veille au soir en général. En cas de mauvaise météo, les séances de vol sont le plus souvent repoussées sans frais.",
#                                 phone: "06 07 41 09 78",
#                                 url: "www.balloonrevolution.com",
#                                 address: "7 Rue de l'ile d'Or, 37400 Amboise",
#                                 price: "189 ~ 899",
#                                 distance: "27km",
#                                 tag_list: "Loisir"
#                                   )

#   mongolfiere.image.attach(io: File.open(Rails.root.join("app/assets/images/Mongolfiere.jpg")),
#   filename: "Mongolfiere.jpg")


#     lulu = Activity.create(name: "Lulu parc",
#                                 description: "Dans son cadre naturel et ombragé du Val de Loire, Lulu Parc est un parc de loisirs en plein air pour enfants de tous âges, dès 1 an.

# En été, les toboggans deviennent aquatiques pour encore plus de sensations et de fraîcheur ! L'ensemble des attractions est à votre disposition à volonté toute la journée (voitures électriques en suppl. uniquement). Pour plus de sécurité, Lulu Parc propose des jeux adaptés à la taille et à l'âge des enfants. Une quinzaine de jeux est aussi accessible aux parents et accompagnateurs pour s'amuser en famille ! Pour seulement 6€, les adultes peuvent s'amuser avec leurs enfants sur plusieurs jeux gonflables, trampolines, balançoires géantes, kartings à pédales, téléphérique, jeux d'adresse, pyramide de cordes et petit train.",
#                                 phone: "02 47 52 58 40",
#                                 url: "https://www.luluparc.eu/",
#                                 address: "Quai de la Loire, 37210 ROCHECORBON France",
#                                 price: "7 ~ ",
#                                 distance: "30km",
#                                 tag_list: "Loisir"
#                                   )

#     lulu.image.attach(io: File.open(Rails.root.join("app/assets/images/lulu.jpg")),
#     filename: "lulu.jpg")

#     golf = Activity.create(name: "Golf Bluegreen",
#                                 description: "Dans son cadre naturel et ombragé du Val de Loire, golf Parc est un parc de loisirs en plein air pour enfants de tous âges, dès 1 an.

# En été, les toboggans deviennent aquatiques pour encore plus de sensations et de fraîcheur ! L'ensemble des attractions est à votre disposition à volonté toute la journée (voitures électriques en suppl. uniquement). Pour plus de sécurité, golf Parc propose des jeux adaptés à la taille et à l'âge des enfants. Une quinzaine de jeux est aussi accessible aux parents et accompagnateurs pour s'amuser en famille ! Pour seulement 6€, les adultes peuvent s'amuser avec leurs enfants sur plusieurs jeux gonflables, trampolines, balançoires géantes, kartings à pédales, téléphérique, jeux d'adresse, pyramide de cordes et petit train.",
#                                 phone: "02 47 56 77 38",
#                                 url: "https://bluegreen.fr/tours-ardree/",
#                                 address: "37360 Saint-Antoine-du-Rocher, France",
#                                 price: "23 ~ ",
#                                 distance: "30km",
#                                 tag_list: "Loisir"
#                                   )

#     golf.image.attach(io: File.open(Rails.root.join("app/assets/images/bluegreen.jpg")),
#     filename: "bluegreen.jpg")

#         sport = Activity.create(name: "Sport & Bien",
#                                 description: "Multitude de sport et gadget à essayer, n'hésitez pas à y jeter un oeil, c'est à côté!",
#                                 phone: "06 08 48 14 63",
#                                 url: "http://www.parc-loisir-tours.com/",
#                                 address: "La Fontaine 37380 Monnaie, France",
#                                 price: "23 ~ ",
#                                 distance: "2km",
#                                 tag_list: "Loisir"
#                                   )

#     sport.image.attach(io: File.open(Rails.root.join("app/assets/images/sport.jpg")),
#     filename: "sport.jpg")


#     canoe = Activity.create(name: "Tours et Canoë",
#                                 description: "Tours & Canoë organise votre randonnée en canoë sur la Loire. Demandez-nous, on s’occupe de tout !
# Le lieu de rendez-vous est à notre base de Vouvray où se fait l’inscription et la préparation à la randonnée.
# Le départ de toutes les randonnées se fait à Chaumont sur Loire.
# La randonnée canoë sur la Loire est accessible à tous (à partir de 6 ans, savoir nager). La difficulté est de niveau 1-2 avec quelques passages un peu plus mouvementés sous les ponts.",
#                                 phone: "06 08 62 95 15",
#                                 url: "http://www.tours-canoe.fr/en/welcome/",
#                                 address: "La Frillière 37210, Vouvray, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     canoe.image.attach(io: File.open(Rails.root.join("app/assets/images/canoe.jpg")),
#     filename: "canoe.jpg")

#         quad = Activity.create(name: "VitiQuad",
#                                 description: "RANDONNÉES GUIDÉES EN QUAD DANS LE VIGNOBLE DU VOUVRAY. OUVERT TOUTE L’ANNÉE SUR RÉSERVATION DU LUNDI AU SAMEDI
# Vous découvrirez, au guidon de nos quads, les vallées et coteaux de notre belle Touraine et vous parcourrez, de l’intérieur, ce trésor d’histoires et de terroirs.",
#                                 phone: "06 71 63 12 61",
#                                 url: "http://www.vitiquad37.com/",
#                                 address: "27 rue des Locquets 37210 Parçay-Meslay, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     quad.image.attach(io: File.open(Rails.root.join("app/assets/images/quad.jpg")),
#     filename: "quad.jpg")


#     bowl = Activity.create(name: "skybowl",
#                                 description: "Bowling, Billard, Arcades",
#                                 phone: "02 47 40 03 00",
#                                 url: "http://www.skybowl.fr/",
#                                 address: "Rue Jean Monnet 37390 Notre-Dame-d'Oé, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     bowl.image.attach(io: File.open(Rails.root.join("app/assets/images/bowl.jpg")),
#     filename: "bowl.jpg")


#     rando = Activity.create(name: "Randonnée",
#                                 description: "randoing, Billard, Arcades",
#                                 phone: "02 47 40 25 26",
#                                 url: "http://www.cdrp37.fr/",
#                                 address: "rue de l'Aviation - 37210 Parçay-Meslay, France",
#                                 price: " ~ ",
#                                 distance: "",
#                                 tag_list: "Loisir"
#                                   )

#     rando.image.attach(io: File.open(Rails.root.join("app/assets/images/rando.jpg")),
#     filename: "rando.jpg")




#     puts " #{Activity.count} activities were created"



#     # ------------------------------------------------



#     vignoble1 = Activity.create(name: "Cave de Vouvray",
#                               description: "La Cave des Producteurs de Vouvray a été créée en 1953 à l’initiative d’un petit groupe de vignerons. Actuellement, la cave coopérative de Vouvray compte une trentaine de passionnés qui poursuivent l’aventure avec près de 400 ha de vignes réparties sur toute l’appellation Vouvray. L’alcool est dangereux pour la santé, à consommer avec modération.",
#                               phone: "02 47 52 75 03",
#                               url: "https://cavedevouvray.com/",
#                               address: "38 rue de la vallée coquette, 37210 Vouvray France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble1.image.attach(io: File.open(Rails.root.join("app/assets/images/vouvray.jpg")),
#     filename: "vouvray.jpg")

#         vignoble2 = Activity.create(name: "Montcontour",
#                               description: "
# SURPLOMBANT LA LOIRE, LE CHÂTEAU MONCONTOUR S’ÉLÈVE À FLANC DE COTEAU AU COEUR DE L’APPELLATION VOUVRAY.
# LE SITE OFFRE UN POINT DE VUE REMARQUABLE SUR TOUTE LA VALLÉE LIGÉRIENNE.



# Depuis 1994, avec passion et engagement, la famille Feray a su préserver et embellir ce château pour en faire l’un des sites historiques remarquables du Val de Loire.

# Le vignoble, l’un des plus anciens de Touraine, est aujourd’hui classé parmi les propriétés viticoles les plus prestigieuses du Val de Loire.

# Le domaine court sur 130 hectares à travers le coteau et la vallée. L’alcool est dangereux pour la santé, à consommer avec modération.",
#                               phone: "02 47 52 60 77",
#                               url: "https://www.vouvray.com/",
#                               address: "Rue de Moncontour 37210 Vouvray France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble2.image.attach(io: File.open(Rails.root.join("app/assets/images/montcontour.jpg")),
#     filename: "montcontour.jpg")

#             vignoble3 = Activity.create(name: "Domaine Allias",
#                               description: "L'exploitation est un domaine entièrement viticole de 14 hectares, dont le centre est le Clos du Petit Mont. Du raisin de ses vignes sont obtenus des vins élaborés avec soins. Depuis 5 générations, le savoir-faire se transmet : culture traditionnelle, vendanges manuelles, tris successifs, fermentations longues…

# Dès 2003, la culture biologique a été appliquée officiellement sur toute l'exploitation. Ainsi sont obtenus des vins fins et typés qui mûriront lentement et pourront devenir centenaires.

# L’alcool est dangereux pour la santé, à consommer avec modération.",
#                               phone: "02 47 52 74 95",
#                               url: "http://www.domaineallias.com/",
#                               address: "106 rue de la Vallée Coquette, 37210 VOUVRAY",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble3.image.attach(io: File.open(Rails.root.join("app/assets/images/vin1.jpg")),
#     filename: "vin1.jpg")

#     vignoble4 = Activity.create(name: "Thierry Guertin - Cellier de la verrine",
#                               description: "Site en construction. L’alcool est dangereux pour la santé, à consommer avec modération.",
#                               phone: "02 47 52 77 77",
#                               url: "http://www.vouvray-guertin.com/",
#                               address: "37210 Vouvray, France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble4.image.attach(io: File.open(Rails.root.join("app/assets/images/vin2.jpg")),
#     filename: "vin2.jpg")
#     #  // Montlouis-sur Loire ~ 20 km // Amboise ~ 27 km  //  Chinon ~ 60 km // Bourgueil et Saint-Nicolas de Bourgueil ~ 60 km



#     # ----------------------------------


#     traiteur1 = Activity.create(name: "Morgan Domet - Chef à Domicile",
#                               description: "Traiteur, chef de cuisine à domicile pour vos repas en amis ou en famille.",
#                               phone: "06 74 43 78 58",
#                               url: "https://www.facebook.com/morgandometchef",
#                               address: "Crotelles, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur1.image.attach(io: File.open(Rails.root.join("app/assets/images/morgandomet.jpg")),
#     filename: "morgandomet.jpg")

#     traiteur2 = Activity.create(name: "Philippe Menager - Chef à Domicile",
#                               description: "Philippe Traiteur, pour se régaler entre amis, en famille ou en amoureux chez vous.
# Nous élaborons avec vous sur mesure des buffets, repas chaud, ateliers plancha, pour tous types d'événements !
# Et proposons des plats a emporter depuis l'atelier !",
#                               phone: "06 69 60 65 76",
#                               url: "https://www.facebook.com/Philippe-Traiteur-113540753667009/",
#                               address: "37380 Monnaie, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur2.image.attach(io: File.open(Rails.root.join("app/assets/images/philipe.jpg")),
#     filename: "philipe.jpg")

#     traiteur3 = Activity.create(name: "Hardouin - Traiteur",
#                               description: "La Maison Hardouin a acquis ses lettres de noblesse avec la charcuterie de tradition. L’excellence de son travail lui a valu d’être régulièrement sollicitée pour l’organisation de repas de groupe.

# L’entreprise a donc tout naturellement développé une activité de traiteur de réception. Elle s’appuie aujourd’hui sur des équipes dédiées à chacune de ses activités, avec une même exigence : la satisfaction client.",
#                               phone: "02 47 40 40 40",
#                               url: "https://www.hardouin.fr/",
#                               address: "Vouvray, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur3.image.attach(io: File.open(Rails.root.join("app/assets/images/hardouin.jpg")),
#     filename: "hardouin.jpg")

#     traiteur4 = Activity.create(name: "Marceul - Reception",
#                               description: "MARCEUL Réceptions, traiteur en Val-de-Loire vous accompagne depuis 1983 dans vos réceptions privées, de mariage, ou professionnelles. Vos repas sont élaborés dans notre laboratoire aux normes européennes (agrément CEE) pour répondre aux exigences de qualité que vous attendez.",
#                               phone: "02 47 85 46 46",
#                               url: "http://www.marceul-receptions.eu/",
#                               address: "37390 Notre Dame D'Oé, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur4.image.attach(io: File.open(Rails.root.join("app/assets/images/marceul.jpg")),
#     filename: "marceul.jpg")



# # -----------------------------------------------------


#     resto1 = Activity.create(name: "La Guizarderie",
#                               description: "Restaurant français convivial.",
#                               phone: "02 47 22 86 81",
#                               url: "",
#                               address: "chemin rural de la croix jean delahaie, 37380 Crotelles, France",
#                               price: "12 ~ ",
#                               distance: "1km",
#                               tag_list: "Restauration"
#                             )

#     resto1.image.attach(io: File.open(Rails.root.join("app/assets/images/guizarderie.jpg")),
#     filename: "guizarderie.jpg")


#     resto2 = Activity.create(name: "L'Epicurien",
#                               description: "Restaurant français convivial",
#                               phone: "02 47 56 10 34",
#                               url: "",
#                               address: "53 Rue Nationale, 37380 Monnaie, France",
#                               price: "12 ~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto2.image.attach(io: File.open(Rails.root.join("app/assets/images/epicurien.jpg")),
#     filename: "epicurien.jpg")

#     resto3 = Activity.create(name: "Le bouchon tourangeau",
#                               description: "Degustez la cuisine locale!.",
#                               phone: "02 47 61 46 04",
#                               url: "",
#                               address: "22 Rue du grand marché 37000 Tours, France",
#                               price: "12 ~ ",
#                               distance: "20km",
#                               tag_list: "Restauration"
#                             )

#     resto3.image.attach(io: File.open(Rails.root.join("app/assets/images/bouchon.jpg")),
#     filename: "bouchon.jpg")


#     resto4 = Activity.create(name: "Les gueules noires",
#                               description: "Restaurant français convivial",
#                               phone: "02 47 52 62 18",
#                               url: "",
#                               address: "66 rue de la vallée coquette 37210 Vouvray France",
#                               price: " ~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto4.image.attach(io: File.open(Rails.root.join("app/assets/images/gueulles.jpg")),
#     filename: "gueulles.jpg")


#     resto5 = Activity.create(name: "le Val Joli",
#                               description: "Restaurant français convivial",
#                               phone: "02 47 52 70 18",
#                               url: "",
#                               address: "Le val Joli, 37210 Vouvray, France",
#                               price: " 18 ~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto5.image.attach(io: File.open(Rails.root.join("app/assets/images/valjoli.jpg")),
#     filename: "valjoli.jpg")

#     resto6 = Activity.create(name:"La cave Montlouis",
#                               description: "Restaurant français convivial",
#                               phone: "02 47 45 05 05",
#                               url: "http://www.restaurant-la-cave-com/",
#                               address: "68 quai Albert Baillet 37270 Montlouis sur loire, France",
#                               price: " ~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto6.image.attach(io: File.open(Rails.root.join("app/assets/images/cave.jpg")),
#     filename: "cave.jpg")

#     resto7 = Activity.create(name:"Le Pizzaiolo",
#                               description: "Pizza traditionnelle à emporter",
#                               phone: "02 47 29 95 31",
#                               url: "http://www.restaurant-la-cave-com/",
#                               address: "41 Rue Nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto7.image.attach(io: File.open(Rails.root.join("app/assets/images/pizza.jpg")),
#     filename: "pizza.jpg")

#     resto8 = Activity.create(name:"Just do eat",
#                               description: "Burger, tacos, sandwiches, couscous à emporter sur reservation",
#                               phone: "02 47 59 90 48",
#                               url: "http://www.restaurant-la-cave-com/",
#                               address: "32 Rue Nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto8.image.attach(io: File.open(Rails.root.join("app/assets/images/justdoeat.jpg")),
#     filename: "justdoeat.jpg")

#     # --------------------------------------------------------

#     gaz1 = Activity.create(name:"Station service Auchan Monnaie",
#                               description: "",
#                               phone: "",
#                               url: "",
#                               address: "la croix poëlon, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Station service"
#                             )

#     gaz1.image.attach(io: File.open(Rails.root.join("app/assets/images/auchan.jpg")),
#     filename: "auchan.jpg")

#     gaz2 = Activity.create(name:"Total access Villedomer",
#                               description: "",
#                               phone: "",
#                               url: "",
#                               address: "37276 Villedomer, France",
#                               price: " ~ ",
#                               distance: "6km",
#                               tag_list: "Station service"
#                             )

#     gaz2.image.attach(io: File.open(Rails.root.join("app/assets/images/total.jpg")),
#     filename: "total.jpg")


#        # --------------------------------------------------------


#     commerce1 = Activity.create(name:"Auchan Monnaie",
#                               description: "",
#                               phone: "",
#                               url: "",
#                               address: "la croix poëlon, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce1.image.attach(io: File.open(Rails.root.join("app/assets/images/monnaie.jpg")),
#     filename: "monnaie.jpg")


#     commerce2 = Activity.create(name:"Intermarché Château-Renault",
#                               description: "",
#                               phone: "02 47 56 87 18",
#                               url: "",
#                               address: "Rue du petit Versailles, 37110 Château-Renault, France",
#                               price: " ~ ",
#                               distance: "8km",
#                               tag_list: "Commerce"
#                             )

#     commerce2.image.attach(io: File.open(Rails.root.join("app/assets/images/inter.jpg")),
#     filename: "inter.jpg")

#     commerce3 = Activity.create(name:"Pharmacie Piron",
#                               description: "",
#                               phone: "02 47 56 10 36",
#                               url: "",
#                               address: "3 Place Jean-Baptiste Moreau, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce3.image.attach(io: File.open(Rails.root.join("app/assets/images/pharmacie.jpg")),
#     filename: "pharmacie.jpg")

#     commerce4 = Activity.create(name:"Au pain Perdu - Boulangerie",
#                               description: "",
#                               phone: "02 47 86 43 05",
#                               url: "",
#                               address: "80 Rue nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce4.image.attach(io: File.open(Rails.root.join("app/assets/images/pain.jpg")),
#     filename: "pain.jpg")

#     commerce5 = Activity.create(name:"Boudet - Boulangerie",
#                               description: "",
#                               phone: "02 47 38 40 51",
#                               url: "",
#                               address: "21 Rue nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce5.image.attach(io: File.open(Rails.root.join("app/assets/images/boudet.jpg")),
#     filename: "boudet.jpg")

#     commerce6 = Activity.create(name:"Café du centre",
#                               description: "",
#                               phone: "02 47 56 11 05",
#                               url: "",
#                               address: "1 Place Jean-Baptiste Moreau, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce6.image.attach(io: File.open(Rails.root.join("app/assets/images/cafe.jpg")),
#     filename: "cafe.jpg")
#    # --------------------------------------------------------

#     puts " #{Activity.count} activities were created"
