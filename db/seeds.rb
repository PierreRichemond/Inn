Room.delete_all
  puts "Rooms destroyed"
Activity.delete_all
  puts "activities destroyed"

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

                  puts "#{Room.count} rooms were created"

room3.images.attach(io: File.open(Rails.root.join("app/assets/images/favicon1.png")),
    filename: "favicon1.png")
room3.images.attach(io: File.open(Rails.root.join("app/assets/images/gite_de_qualite.png")),
    filename: "gite_de_qualite.png")
room3.images.attach(io: File.open(Rails.root.join("app/assets/images/leclosvaliere.png")),
    filename: "leclosvaliere.png")

    amboise = Activity.create(name: "Château d’Amboise",
                              description: "Rattaché à la couronne en 1434, ce monument emblématique et ses jardins paysagers offrent un des plus remarquables panoramas sur la vallée de la Loire. Pour visiter le château, plusieurs parcours sont proposés aux visiteurs. Chacun d’entre eux porte un regard singulier son rayonnement politique et artistique européen à la Renaissance, les moments intimes de la vie des souverains, la vie quotidienne et les coulisses de la Cour. En 1516, Léonard de Vinci fut invité par François 1er à Amboise où il finira ses jours trois années plus tard. Pendant trois ans, pour célébrer le 500e anniversaire de sa présence, le château d’Amboise lui consacrera plusieurs événements.",
                              phone: "02 47 57 00 98",
                              url: "www.chateau-amboise.com",
                              address: "Mnt de l'Emir Abd el Kader, 37400 Amboise, France",
                              price: "13.5",
                              distance: "27km"
                            )

    amboise.image.attach(io: File.open(Rails.root.join("app/assets/images/Amboise.jpg")),
    filename: "Amboise.jpg")

    luce = Activity.create(name: "Le Château du Clos Lucé",
                              description: "L’épopée de cette demeure de briques roses et de pierres de tuffeau, bâtie sur des fondations gallo-romaines, commence sous le règne de Louis XI, en 1471. Offert par le Roi à son favori Étienne le Loup, un ancien marmiton anobli, le château du Cloux à Amboise était entouré de fortifications. Le lieu est acheté par Charles VIII et devient alors la résidence de plaisance des rois de France. Le Roi transforme la forteresse médiévale en château d’agrément et fait construire un oratoire, pur joyau de l’architecture gothique, pour son épouse la reine Anne de Bretagne. Le jeune duc d’Angoulême, futur François Ier, y séjourne régulièrement. Devenu ensuite Clos-Lucé, il fut le lieu de résidence de Léonard de Vinci au cours des trois dernières années de sa vie.",
                              phone: "02 47 57 00 73",
                              url: "www.vinci-closluce.com",
                              address: "2 Rue du Clos Lucé, 37400 Amboise, France",
                              price: "17.5",
                              distance: "27km"
                            )

    luce.image.attach(io: File.open(Rails.root.join("app/assets/images/ClosLuce.jpg")),
    filename: "ClosLuce.jpg")

    chambord = Activity.create(name: "Domaine National de Chambord",
                              description: "Le château de Chambord est l’une des plus singulières constructions que le siècle de la Renaissance ait laissé. L’architecture est un savant mélange entre les éléments traditionnels de l’architecture médiévale française et ceux empruntés à la Renaissance italienne. Même si les quatre tours massives qui flanquent le donjon rappellent les forteresses médiévales, la conception du château et les éléments innovants qui le composent sont uniques. Le plan centré du donjon, l’emplacement de l’escalier à double révolution, la clarté géométrique des façades et leur ornementation, la symétrie des bâtiments, la présence de voûtes à caissons au deuxième étage font la singularité du monument.",
                              phone: "02 54 50 40 00",
                              url: "https://www.chambord.org/",
                              address: "Château, 41250 Chambord, France",
                              price: "14.5",
                              distance: "60km"
                            )

    chambord.image.attach(io: File.open(Rails.root.join("app/assets/images/Chambord.jpg")),
    filename: "Chambord.jpg")

    ronsard = Activity.create(name: "Prieuré Saint-Cosme, demeure de Ronsard",
                              description: "Le prieuré Saint-Cosme était considéré par les chanoines du 12e siècle comme « un paradis sur terre permettant d’atteindre plus facilement le vrai paradis ». Ronsard (1524- 1585) en fut le prieur durant les vingt dernières années de sa vie. Situé à La Riche, tout près de Tours, ce lieu a achevé sa métamorphose début 2015 après plusieurs années de travaux. Propriétés du Conseil général d’Indre-et-Loire depuis 1951, les jardins du prieuré ont été entièrement repensé avec une scénographie autour de l’univers du poète.",
                              phone: "02 47 37 32 70",
                              url: "www.prieure-ronsard.fr",
                              address: "37520 La Riche, France",
                              price: "6",
                              distance: "21km"
                            )

    ronsard.image.attach(io: File.open(Rails.root.join("app/assets/images/prieure.jpg")),
    filename: "prieure.jpg")

    chenonceau = Activity.create(name: "Château de Chenonceau",
                              description: "Administré et protégé par des femmes qui ont pour la plupart marqué l’Histoire, Chenonceau est connu comme le « Château des Dames ». De Katherine Briçonnet à Catherine de Médicis, cette empreinte féminine est présente de son architecture jusqu’à ses jardins.",
                              phone: "08 20 20 90 90",
                              url: "www.chenonceau.com",
                              address: "37150 Chenonceaux, France",
                              price: "15",
                              distance: "37km"
                            )

    chenonceau.image.attach(io: File.open(Rails.root.join("app/assets/images/Chenonceau.jpg")),
    filename: "Chenonceau.jpg")

    azay = Activity.create(name: "Château d’Azay-le-Rideau",
                              description: "Bâti sur une île au milieu de l’Indre sous le règne de François Ier, ce monument est le résultat d’une subtile alliance de traditions françaises et de décors innovants venus d’Italie. Depuis 2017, vous pouvez découvrir un château magnifié après trois ans de restauration.",
                              phone: "02 47 45 42 04",
                              url: "www.azay-le-rideau.fr",
                              address: "Rue de Pineau, 37190 Azay-le-Rideau, France",
                              price: "11.5",
                              distance: "44km"
                            )

    azay.image.attach(io: File.open(Rails.root.join("app/assets/images/Azay.jpg")),
    filename: "Azay.jpg")

    chaumont = Activity.create(name: "Château de Chaumont-sur-Loire",
                              description: "Propriété de la Région Centre-Val de Loire depuis 2007, le Domaine de Chaumont-sur-Loire est un véritable bijou de l’architecture Renaissance qui flotte au-dessus de la Loire entre Blois et Amboise. Au-delà d’une histoire très riche, le château est devenu un lieu de passage incontournable pour les amateurs d’art contemporain et de jardins paysagers. Chaque année, une nouvelle saison artistique prend place.",
                              phone: "02 54 20 99 22",
                              url: "www.domaine-chaumont.fr",
                              address: "41150 Chaumont-sur-Loire, France",
                              price: "14 ~ 19",
                              distance: "35km"
                            )

    chaumont.image.attach(io: File.open(Rails.root.join("app/assets/images/Chaumont.jpg")),
    filename: "Chaumont.jpg")

    langeais = Activity.create(name: "Château de Langeais",
                              description: "Avec son pont-levis en état de marche, son chemin de ronde, ses mâchicoulis et ses imposantes tours, le château de Langeais offre vers l’extérieur l’apparence d’un site défensif, tandis que la façade intérieure annonce la Renaissance. Vous y découvrirez la vie quotidienne d’un grand seigneur à la fin du Moyen Âge au travers d’une scénographie vivante qui restitue l’atmosphère et l’organisation d’une grande résidence seigneuriale.",
                              phone: "02 47 96 72 60",
                              url: "www.chateau-de-langeais.com",
                              address: "Place Pierre de Brosse, 37130 Langeais, France",
                              price: "11",
                              distance: "41km"
                            )

    langeais.image.attach(io: File.open(Rails.root.join("app/assets/images/langeais.jpg")),
    filename: "langeais.jpg")

    villandry = Activity.create(name: "Château de Villandry",
                              description: "Il s’agit du dernier des grands châteaux de la Loire érigés pendant la Renaissance. Son architecture et ses jardins remarquables font de ce monument l’un des fleurons du patrimoine mondial.",
                              phone: "02 47 50 02 09",
                              url: "www.chateauvillandry.fr",
                              address: "3 Rue Principale, 37510 Villandry, France",
                              price: "12",
                              distance: "34km"
                            )

    villandry.image.attach(io: File.open(Rails.root.join("app/assets/images/villandry.jpg")),
    filename: "villandry.jpg")

    aquarium = Activity.create(name: "Grand aquarium de Touraine",
                              description: "Des torrents des montagnes françaises aux mers lointaines, le Grand Aquarium de Touraine est le plus grand aquarium d’eau douce d’Europe. Découvrez tous ces écosystèmes à travers 63 aquariums et ses 2 millions de litres d’eau !",
                              phone: "02 47 23 44 57",
                              url: "www.grandaquariumdetouraine.com",
                              address: "37400 Lussault-Sur-Loire, France",
                              price: "28",
                              distance: "27km"
                            )

    aquarium.image.attach(io: File.open(Rails.root.join("app/assets/images/Aquarium.jpg")),
    filename: "Aquarium.jpg")

    zoo = Activity.create(name: "Zoo de Beauval",
                              description: "Sur plus de 40 hectares, le ZooParc de Beauval regroupe 10.000 animaux de 600 espèces différentes, dont les très rares pandas géants, uniques en France. À travers son association « Beauval Nature », le ZooParc participe activement à la préservation de la biodiversité, en soutenant plus de 40 programmes de conservation et de recherche dans le monde.",
                              phone: "02 54 75 50 00",
                              url: "www.zoobeauval.com",
                              address: "41110 Saint-Aignan, France",
                              price: "27 ~ 32",
                              distance: "60km"
                            )

    zoo.image.attach(io: File.open(Rails.root.join("app/assets/images/Beauval.jpg")),
    filename: "Beauval.jpg")

    safari = Activity.create(name: "Safari Train - la réserve de Beaumarchais",
                              description: "Au cœur du Val de Loire, à deux pas d’Amboise et de Chenonceaux, vivez un moment de détente et d'aventure en embarquant à bord du Safari Train, pour une étonnante traversée d'un parc d’élevage à la rencontre des grands gibiers.",
                              phone: "02 47 56 22 30",
                              url: "www.reserve-de-beaumarchais.com",
                              address: "37110 Autrèche, France",
                              price: "8.5",
                              distance: "16km"
                            )

    safari.image.attach(io: File.open(Rails.root.join("app/assets/images/Safari.jpg")),
    filename: "Safari.jpg")

    mongolfiere = Activity.create(name: "Un vol en Montgolfière ?",
                              description: "Survolez les châteaux du val de Loire en montgolfière et découvrez notre patrimoine culturel d’un point de vue sans pareil. De nombreuses entreprises vous proposent des circuits de trois heures environ et forcément dépendants du vent. À réserver en avance. Confirmation la veille au soir en général. En cas de mauvaise météo, les séances de vol sont le plus souvent repoussées sans frais.",
                              phone: "",
                              url: "www.balloonrevolution.com -- www.touraine-montgolfiere.fr -- www.loire-et-montgolfiere.com",
                              address: "",
                              price: "",
                              distance: ""
                            )

    mongolfiere.image.attach(io: File.open(Rails.root.join("app/assets/images/Mongolfiere.jpg")),
    filename: "Mongolfiere.jpg")

    vignobles = Activity.create(name: "Les vignobles de Touraine",
                              description: "Propices aux randonnées à pieds ou à vélo, les vignobles de Touraine vous proposent de découvrir des cépages typiques du val de Loire : chenin blanc, gamay, cabernet franc, cot… Que l’on soit au milieu des pieds de vigne ou dans les caves troglodytes pour découvrir les procédés de fabrication, le dépaysement est total !",
                              phone: "L’alcool est dangereux pour la santé, à consommer avec modération.",
                              url: "",
                              address: "",
                              price: "",
                              distance: "Vouvray ~ 14 km // Montlouis-sur Loire ~ 20 km // Amboise ~ 27 km  //  Chinon ~ 60 km // Bourgueil et Saint-Nicolas de Bourgueil ~ 60 km"
                            )

    vignobles.image.attach(io: File.open(Rails.root.join("app/assets/images/Vin.jpg")),
    filename: "Vin.jpg")

    rabelais = Activity.create(name: "Musée Rabelais, Maison de la Devinière",
                              description: "Il s’agit du dernier des grands châteaux de la Loire érigés pendant la Renaissance. Son architecture et ses jardins remarquables font de ce monument l’un des fleurons du patrimoine mondial.",
                              phone: "02 47 95 91 18",
                              url: "www.musee-rabelais.fr",
                              address: "Musee Rabelais, 4 Rue de la Devinière, 37500 Seuilly, France",
                              price: "6",
                              distance: "70km"
                            )

    rabelais.image.attach(io: File.open(Rails.root.join("app/assets/images/Rabelais.jpg")),
    filename: "Rabelais.jpg")

    chinon = Activity.create(name: "Forteresse Royale de Chinon",
                              description: "Surplombant la ville, la forteresse construite par les Comtes d’Anjou et notamment les Plantagenêt évoque l’époque où l’Histoire de la France et celle de l’Angleterre étaient intimement mêlées. En 1429, elle est le théâtre de la rencontre historique entre Jeanne d’Arc et le Dauphin, futur Charles VII.",
                              phone: "02 47 93 13 45",
                              url: "www.forteressechinon.fr",
                              address: "2 Rue du Château, 37500 Chinon, France",
                              price: "9",
                              distance: "63km"
                            )

    chinon.image.attach(io: File.open(Rails.root.join("app/assets/images/Chinon.jpg")),
    filename: "Chinon.jpg")

    puts " #{Activity.count} activities were created"
