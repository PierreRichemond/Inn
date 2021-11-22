
Booking.delete_all
BookingPreview.delete_all
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



  # aquarium = Activity.create(phone: "02 47 23 44 57",
  #                               url: "www.grandaquariumdetouraine.com",
  #                               address: "37400 Lussault-Sur-Loire, France",
  #                               price: "28",
  #                               distance: "27km",
  #                               tag_list: "Loisir")

  #     aquarium.image.attach(io: File.open(Rails.root.join("app/assets/images/Aquarium.jpg")),
  #     filename: "Aquarium.jpg")

  # aquarium.set_name('fr', "Grand aquarium de Touraine")
  # aquarium.set_name('en', "Great aquarium of Touraine")
  # aquarium.set_description('fr', "Des torrents des montagnes françaises aux mers lointaines, le Grand Aquarium de Touraine est le plus grand aquarium d’eau douce d’Europe. Découvrez tous ces écosystèmes à travers 63 aquariums et ses 2 millions de litres d’eau!")
  # aquarium.set_description('en', "From the torrents of the French mountains to distant seas, the Grand Aquarium de Touraine is the largest freshwater aquarium in Europe. Discover all these ecosystems through 63 aquariums and its 2 million liters of water!")

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


  #   amboise = Activity.create(phone: "02 47 57 00 98",
  #                             url: "www.chateau-amboise.com",
  #                             address: "Mnt de l'Emir Abd el Kader, 37400 Amboise, France",
  #                             price: "13.5",
  #                             distance: "27km",
  #                             tag_list: "Culture"
  #                           )

  #   amboise.image.attach(io: File.open(Rails.root.join("app/assets/images/Amboise.jpg")),
  #   filename: "Amboise.jpg")

  # amboise.set_name('fr', "Château d’Amboise")
  # amboise.set_name('en', "Amboise castle")
  # amboise.set_description('fr', "Rattaché à la couronne en 1434, ce monument emblématique et ses jardins paysagers offrent un des plus remarquables panoramas sur la vallée de la Loire. Pour visiter le château, plusieurs parcours sont proposés aux visiteurs. Chacun d’entre eux porte un regard singulier son rayonnement politique et artistique européen à la Renaissance, les moments intimes de la vie des souverains, la vie quotidienne et les coulisses de la Cour. En 1516, Léonard de Vinci fut invité par François 1er à Amboise où il finira ses jours trois années plus tard. Pendant trois ans, pour célébrer le 500e anniversaire de sa présence, le château d’Amboise lui consacrera plusieurs événements.")
  # amboise.set_description('en', "Attached to the crown in 1434, this emblematic monument and its landscaped gardens offer one of the most remarkable panoramas over the Loire Valley. To visit the castle, several routes are offered to visitors. Each of them takes a unique look at their European political and artistic influence during the Renaissance, the intimate moments in the life of sovereigns, daily life and behind the scenes at the Court. In 1516, Leonardo da Vinci was invited by François 1er to Amboise where he will end his days three years later. For three years, to celebrate the 500th anniversary of its presence, the Château d'Amboise will dedicate several events to it.")


  # luce = Activity.create(     phone: "02 47 57 00 73",
  #                             url: "www.vinci-closluce.com",
  #                             address: "2 Rue du Clos Lucé, 37400 Amboise, France",
  #                             price: "17.5",
  #                             distance: "27km",
  #                             tag_list: "Culture"
  #                           )

  #   luce.image.attach(io: File.open(Rails.root.join("app/assets/images/ClosLuce.jpg")),
  #   filename: "ClosLuce.jpg")
  # luce.set_name('fr', "Le Château du Clos Lucé")
  # luce.set_name('en', "Clos Lucé caslte")
  # luce.set_description('fr', "L’épopée de cette demeure de briques roses et de pierres de tuffeau, bâtie sur des fondations gallo-romaines, commence sous le règne de Louis XI, en 1471. Offert par le Roi à son favori Étienne le Loup, un ancien marmiton anobli, le château du Cloux à Amboise était entouré de fortifications. Le lieu est acheté par Charles VIII et devient alors la résidence de plaisance des rois de France. Le Roi transforme la forteresse médiévale en château d’agrément et fait construire un oratoire, pur joyau de l’architecture gothique, pour son épouse la reine Anne de Bretagne. Le jeune duc d’Angoulême, futur François Ier, y séjourne régulièrement. Devenu ensuite Clos-Lucé, il fut le lieu de résidence de Léonard de Vinci au cours des trois dernières années de sa vie.")
  # luce.set_description('en', "The epic of this residence of pink bricks and tufa stones, built on Gallo-Roman foundations, begins under the reign of Louis XI, in 1471. Offered by the King to his favorite Étienne le Loup, a former ennobled cook, the Château du Cloux in Amboise was surrounded by fortifications. The place is bought by Charles VIII and then becomes the pleasure residence of the kings of France. The King transformed the medieval fortress into a pleasure castle and built an oratory, a pure jewel of Gothic architecture, for his wife, Queen Anne of Brittany. The young Duke of Angoulême, the future François I, stayed there regularly. Then became Clos-Lucé, it was the place of residence of Leonardo da Vinci during the last three years of his life.")



  #   chambord = Activity.create(phone: "02 54 50 40 00",
  #                             url: "https://www.chambord.org/",
  #                             address: "Château, 41250 Chambord, France",
  #                             price: "14.5",
  #                             distance: "60km",
  #                             tag_list: "Culture"
  #                           )

  #   chambord.image.attach(io: File.open(Rails.root.join("app/assets/images/Chambord.jpg")),
  #   filename: "Chambord.jpg")

  # chambord.set_name('fr', "Domaine National de Chambord")
  # chambord.set_name('en', "National Domain of Chambord")
  # chambord.set_description('fr', "Le château de Chambord est l’une des plus singulières constructions que le siècle de la Renaissance ait laissé. L’architecture est un savant mélange entre les éléments traditionnels de l’architecture médiévale française et ceux empruntés à la Renaissance italienne. Même si les quatre tours massives qui flanquent le donjon rappellent les forteresses médiévales, la conception du château et les éléments innovants qui le composent sont uniques. Le plan centré du donjon, l’emplacement de l’escalier à double révolution, la clarté géométrique des façades et leur ornementation, la symétrie des bâtiments, la présence de voûtes à caissons au deuxième étage font la singularité du monument.")
  # chambord.set_description('en', "The Château de Chambord is one of the most unique constructions that the Renaissance century has left. The architecture is a clever blend of traditional elements of French medieval architecture and those borrowed from the Italian Renaissance. Even though the four massive towers that flank the keep are reminiscent of medieval fortresses, the design of the castle and the innovative elements that compose it are unique. The central plan of the keep, the location of the double-spiral staircase, the geometric clarity of the facades and their ornamentation, the symmetry of the buildings, the presence of coffered vaults on the second floor make the monument unique.")

  #   ronsard = Activity.create(phone: "02 47 37 32 70",
  #                             url: "www.prieure-ronsard.fr",
  #                             address: "37520 La Riche, France",
  #                             price: "6",
  #                             distance: "21km",
  #                             tag_list: "Culture"
  #                           )

  #   ronsard.image.attach(io: File.open(Rails.root.join("app/assets/images/prieure.jpg")),
  #   filename: "prieure.jpg")

  # ronsard.set_name('fr', "Prieuré Saint-Cosme, demeure de Ronsard")
  # ronsard.set_name('en', "Priory of Saint-Cosme, home of Ronsard")
  # ronsard.set_description('fr', "Le prieuré Saint-Cosme était considéré par les chanoines du 12e siècle comme « un paradis sur terre permettant d’atteindre plus facilement le vrai paradis ». Ronsard (1524- 1585) en fut le prieur durant les vingt dernières années de sa vie. Situé à La Riche, tout près de Tours, ce lieu a achevé sa métamorphose début 2015 après plusieurs années de travaux. Propriétés du Conseil général d’Indre-et-Loire depuis 1951, les jardins du prieuré ont été entièrement repensé avec une scénographie autour de l’univers du poète.")
  # ronsard.set_description('en', "The priory of Saint-Cosme was considered by the canons of the 12th century as 'a paradise on earth making it easier to reach true paradise'. Ronsard (1524-1585) was its prior during the last twenty years of his life. Located in La Riche, very close to Tours, this place completed its metamorphosis in early 2015 after several years of work. Owned by the General Council of Indre-et-Loire since 1951, the priory gardens have been completely redesigned with a scenography around the universe of the poet.")


  #   chenonceau = Activity.create(phone: "08 20 20 90 90",
  #                             url: "www.chenonceau.com",
  #                             address: "37150 Chenonceaux, France",
  #                             price: "15",
  #                             distance: "37km",
  #                             tag_list: "Culture"
  #                           )

  #   chenonceau.image.attach(io: File.open(Rails.root.join("app/assets/images/Chenonceau.jpg")),
  #   filename: "Chenonceau.jpg")

  # chenonceau.set_name('fr', "Château de Chenonceau")
  # chenonceau.set_name('en', "Chenonceau castle")
  # chenonceau.set_description('fr', "Administré et protégé par des femmes qui ont pour la plupart marqué l’Histoire, Chenonceau est connu comme le « Château des Dames ». De Katherine Briçonnet à Catherine de Médicis, cette empreinte féminine est présente de son architecture jusqu’à ses jardins.")
  # chenonceau.set_description('en', "Administered and protected by women, most of whom have left their mark on history, Chenonceau is known as the 'Château des Dames'. From Katherine Briçonnet to Catherine de Medici, this feminine imprint is present from her architecture to her gardens.")

  #   azay = Activity.create(phone: "02 47 45 42 04",
  #                             url: "www.azay-le-rideau.fr",
  #                             address: "Rue de Pineau, 37190 Azay-le-Rideau, France",
  #                             price: "11.5",
  #                             distance: "44km",
  #                             tag_list: "Culture"
  #                           )

  #   azay.image.attach(io: File.open(Rails.root.join("app/assets/images/Azay.jpg")),
  #   filename: "Azay.jpg")

  # azay.set_name('fr', "Château d’Azay-le-Rideau")
  # azay.set_name('en', "Azay-le-Rideau castle")
  # azay.set_description('fr', "Bâti sur une île au milieu de l’Indre sous le règne de François Ier, ce monument est le résultat d’une subtile alliance de traditions françaises et de décors innovants venus d’Italie. Depuis 2017, vous pouvez découvrir un château magnifié après trois ans de restauration.")
  # azay.set_description('en', "Built on an island in the middle of the Indre during the reign of François I, this monument is the result of a subtle alliance of French traditions and innovative decorations from Italy. Since 2017, you can discover a castle magnified after three years of restoration.")

  #   chaumont = Activity.create(phone: "02 54 20 99 22",
  #                             url: "www.domaine-chaumont.fr",
  #                             address: "41150 Chaumont-sur-Loire, France",
  #                             price: "14 ~ 19",
  #                             distance: "35km",
  #                             tag_list: "Culture"
  #                           )

  #   chaumont.image.attach(io: File.open(Rails.root.join("app/assets/images/Chaumont.jpg")),
  #   filename: "Chaumont.jpg")


  # chaumont.set_name('fr', "Château de Chaumont-sur-Loire")
  # chaumont.set_name('en', "Chaumont-sur-Loire castle")
  # chaumont.set_description('fr', "Propriété de la Région Centre-Val de Loire depuis 2007, le Domaine de Chaumont-sur-Loire est un véritable bijou de l’architecture Renaissance qui flotte au-dessus de la Loire entre Blois et Amboise. Au-delà d’une histoire très riche, le château est devenu un lieu de passage incontournable pour les amateurs d’art contemporain et de jardins paysagers. Chaque année, une nouvelle saison artistique prend place.")
  # chaumont.set_description('en', "Property of the Center-Val de Loire Region since 2007, the Domaine de Chaumont-sur-Loire is a real gem of Renaissance architecture that floats above the Loire between Blois and Amboise. Beyond a very rich history, the castle has become an essential stopover for lovers of contemporary art and landscaped gardens. Each year, a new artistic season takes place.")

  #   langeais = Activity.create(phone: "02 47 96 72 60",
  #                             url: "www.chateau-de-langeais.com",
  #                             address: "Place Pierre de Brosse, 37130 Langeais, France",
  #                             price: "11",
  #                             distance: "41km",
  #                             tag_list: "Culture"
  #                           )

  #   langeais.image.attach(io: File.open(Rails.root.join("app/assets/images/langeais.jpg")),
  #   filename: "langeais.jpg")

  # langeais.set_name('fr', "Château de Langeais")
  # langeais.set_name('en', "Langeais castle")
  # langeais.set_description('fr', "Avec son pont-levis en état de marche, son chemin de ronde, ses mâchicoulis et ses imposantes tours, le château de Langeais offre vers l’extérieur l’apparence d’un site défensif, tandis que la façade intérieure annonce la Renaissance. Vous y découvrirez la vie quotidienne d’un grand seigneur à la fin du Moyen Âge au travers d’une scénographie vivante qui restitue l’atmosphère et l’organisation d’une grande résidence seigneuriale.")
  # langeais.set_description('en', "With its drawbridge in working order, its rampart walk, its machicolations and its imposing towers, the Château de Langeais offers the appearance of a defensive site on the outside, while the interior facade announces the Renaissance. You will discover the daily life of a great lord at the end of the Middle Ages through a living scenography that recreates the atmosphere and organization of a large stately residence.")


  #   villandry = Activity.create(phone: "02 47 50 02 09",
  #                             url: "www.chateauvillandry.fr",
  #                             address: "3 Rue Principale, 37510 Villandry, France",
  #                             price: "12",
  #                             distance: "34km",
  #                             tag_list: "Culture"
  #                           )

  #   villandry.image.attach(io: File.open(Rails.root.join("app/assets/images/villandry.jpg")),
  #   filename: "villandry.jpg")

  # villandry.set_name('fr', "Château de Villandry")
  # villandry.set_name('en', "Villandry castle")
  # villandry.set_description('fr', "Il s’agit du dernier des grands châteaux de la Loire érigés pendant la Renaissance. Son architecture et ses jardins remarquables font de ce monument l’un des fleurons du patrimoine mondial.")
  # villandry.set_description('en', "This is the last of the great Loire châteaux erected during the Renaissance. Its remarkable architecture and gardens make this monument one of the flagships of the world heritage.")


  # rabelais = Activity.create(phone: "02 47 95 91 18",
  #   url: "www.musee-rabelais.fr",
  #   address: "Musee Rabelais, 4 Rue de la Devinière, 37500 Seuilly, France",
  #   price: "6",
  #   distance: "70km",
  #   tag_list: "Culture"
  # )

  # rabelais.image.attach(io: File.open(Rails.root.join("app/assets/images/Rabelais.jpg")),
  # filename: "Rabelais.jpg")


  # rabelais.set_name('fr', "Musée Rabelais, Maison de la Devinière")
  # rabelais.set_name('en', "Rabelais museum, Maison de la Devinière")
  # rabelais.set_description('fr', "Rabelais a fait de sa maison et du paysage environnant le cadre naturel des aventures de ses géants (Gargantua et Pantagruel). Le musée retrace les grands moments de la vie de l'écrivain et éclaire le visiteur sur les idées révolutionnaires de la Renaissance.")
  # rabelais.set_description('en', "Rabelais has made his house and the surrounding landscape the natural setting for the adventures of his giants (Gargantua and Pantagruel). The museum retraces the highlights of the life of the writer and illuminates the visitor about the revolutionary ideas of the Renaissance.")


  # chinon = Activity.create(phone: "02 47 93 13 45",
  #   url: "www.forteressechinon.fr",
  #   address: "2 Rue du Château, 37500 Chinon, France",
  #   price: "9",
  #   distance: "63km",
  #   tag_list: "Culture"
  # )

  # chinon.image.attach(io: File.open(Rails.root.join("app/assets/images/Chinon.jpg")),
  # filename: "Chinon.jpg")

  # chinon.set_name('fr', "Forteresse Royale de Chinon")
  # chinon.set_name('en', "Royal Fortress of Chinon")
  # chinon.set_description('fr', "Surplombant la ville, la forteresse construite par les Comtes d’Anjou et notamment les Plantagenêt évoque l’époque où l’Histoire de la France et celle de l’Angleterre étaient intimement mêlées. En 1429, elle est le théâtre de la rencontre historique entre Jeanne d’Arc et le Dauphin, futur Charles VII.")
  # chinon.set_description('en', "Overlooking the city, the fortress built by the Counts of Anjou and in particular the Plantagenets evokes the time when the history of France and that of England were closely intertwined. In 1429, it was the scene of the historic meeting between Joan of Arc and the Dauphin, the future Charles VII.")


  # cuir = Activity.create(phone: "02 47 56 03 59",
  #   url: "http://www.museeducuir.org/",
  #   address: "105 rue de la republique, 37110 Château-Renault, France",
  #   price: "",
  #   distance: "10km",
  #   tag_list: "Culture"
  # )

  # cuir.image.attach(io: File.open(Rails.root.join("app/assets/images/cuir.jpg")),
  # filename: "cuir.jpg")

  # cuir.set_name('fr', "Musée du cuir et de la tannerie")
  # cuir.set_name('en', "Leather and tannery museum")
  # cuir.set_description('fr', "")
  # cuir.set_description('en', "")


      # ------------------------------------------------loisir


      aquarium = Activity.create(phone: "02 47 23 44 57",
                                url: "www.grandaquariumdetouraine.com",
                                address: "37400 Lussault-Sur-Loire, France",
                                price: "28",
                                distance: "27km"
                              )

      aquarium.image.attach(io: File.open(Rails.root.join("app/assets/images/Aquarium.jpg")),
      filename: "Aquarium.jpg")
      aquarium.tag_list = "Loisir, Leasure"
      aquarium.save
  aquarium.set_name('fr', "Grand aquarium de Touraine")
  aquarium.set_name('en', "Great aquarium of Touraine")
  aquarium.set_description('fr', "Des torrents des montagnes françaises aux mers lointaines, le Grand Aquarium de Touraine est le plus grand aquarium d’eau douce d’Europe. Découvrez tous ces écosystèmes à travers 63 aquariums et ses 2 millions de litres d’eau!")
  aquarium.set_description('en', "From the torrents of the French mountains to distant seas, the Grand Aquarium de Touraine is the largest freshwater aquarium in Europe. Discover all these ecosystems through 63 aquariums and its 2 million liters of water!")


#         zoo = Activity.create(  phone: "02 54 75 50 00",
#                                 url: "www.zoobeauval.com",
#                                 address: "41110 Saint-Aignan, France",
#                                 price: "27 ~ 32",
#                                 distance: "60km",
#                                 tag_list: "Loisir"
#                               )

#       zoo.image.attach(io: File.open(Rails.root.join("app/assets/images/Beauval.jpg")),
#       filename: "Beauval.jpg")

#   zoo.set_name('fr', "Zoo de Beauval")
#   zoo.set_name('en', "Zoo of Beauval")
#   zoo.set_description('fr', "Sur plus de 40 hectares, le ZooParc de Beauval regroupe 10.000 animaux de 600 espèces différentes, dont les très rares pandas géants, uniques en France. À travers son association « Beauval Nature », le ZooParc participe activement à la préservation de la biodiversité, en soutenant plus de 40 programmes de conservation et de recherche dans le monde.")
#   zoo.set_description('en', "On more than 40 hectares, the Beauval ZooParc brings together 10,000 animals of 600 different species, including the very rare giant pandas, unique in France. Through its “Beauval Nature” association, the ZooParc actively participates in the preservation of biodiversity, by supporting more than 40 conservation and research programs around the world.")


#       safari = Activity.create( phone: "02 47 56 22 30",
#                                 url: "www.reserve-de-beaumarchais.com",
#                                 address: "37110 Autrèche, France",
#                                 price: "8.5",
#                                 distance: "16km",
#                                 tag_list: "Loisir"
#                               )

#       safari.image.attach(io: File.open(Rails.root.join("app/assets/images/Safari.jpg")),
#       filename: "Safari.jpg")

#   safari.set_name('fr', "Safari Train - la réserve de Beaumarchais")
#   safari.set_name('en', "Safari Train - Beaumarchais Reserve")
#   safari.set_description('fr', "Au cœur du Val de Loire, à deux pas d’Amboise et de Chenonceaux, vivez un moment de détente et d'aventure en embarquant à bord du Safari Train, pour une étonnante traversée d'un parc d’élevage à la rencontre des grands gibiers.")
#   safari.set_description('en', "In the heart of the Loire Valley, a stone's throw from Amboise and Chenonceaux, experience a moment of relaxation and adventure by boarding the Safari Train, for an astonishing crossing of a breeding park to meet the great game.")

#       mongolfiere = Activity.create(phone: "06 07 41 09 78",
#                                 url: "www.balloonrevolution.com",
#                                 address: "7 Rue de l'ile d'Or, 37400 Amboise",
#                                 price: "189 ~ 899",
#                                 distance: "27km",
#                                 tag_list: "Loisir"
#                                   )

#   mongolfiere.image.attach(io: File.open(Rails.root.join("app/assets/images/Mongolfiere.jpg")),
#   filename: "Mongolfiere.jpg")

#   mongolfiere.set_name('fr', "Un vol en Montgolfière?")
#   mongolfiere.set_name('en', "A flight in Montgolfière?")
#   mongolfiere.set_description('fr', "Survolez les châteaux du val de Loire en montgolfière et découvrez notre patrimoine culturel d’un point de vue sans pareil. De nombreuses entreprises vous proposent des circuits de trois heures environ et forcément dépendants du vent. À réserver en avance. Confirmation la veille au soir en général. En cas de mauvaise météo, les séances de vol sont le plus souvent repoussées sans frais.")
#   mongolfiere.set_description('en', "Fly over the castles of the Loire Valley in a hot air balloon and discover our cultural heritage from an unparalleled perspective. Many companies offer tours of around three hours and necessarily depending on the wind. Book in advance. Confirmation the night before in general. In the event of bad weather, flight sessions are most often postponed free of charge.")

#     lulu = Activity.create(phone: "02 47 52 58 40",
#                                 url: "https://www.luluparc.eu/",
#                                 address: "Quai de la Loire, 37210 ROCHECORBON France",
#                                 price: "7 ~ ",
#                                 distance: "30km",
#                                 tag_list: "Loisir"
#                                   )

#     lulu.image.attach(io: File.open(Rails.root.join("app/assets/images/lulu.jpg")),
#     filename: "lulu.jpg")

#   lulu.set_name('fr', "Lulu parc")
#   lulu.set_name('en', "Lulu parc")
#   lulu.set_description('fr', "Dans son cadre naturel et ombragé du Val de Loire, Lulu Parc est un parc de loisirs en plein air pour enfants de tous âges, dès 1 an. En été, les toboggans deviennent aquatiques pour encore plus de sensations et de fraîcheur ! L'ensemble des attractions est à votre disposition à volonté toute la journée (voitures électriques en suppl. uniquement). Pour plus de sécurité, Lulu Parc propose des jeux adaptés à la taille et à l'âge des enfants. Une quinzaine de jeux est aussi accessible aux parents et accompagnateurs pour s'amuser en famille ! Pour seulement 6€, les adultes peuvent s'amuser avec leurs enfants sur plusieurs jeux gonflables, trampolines, balançoires géantes, kartings à pédales, téléphérique, jeux d'adresse, pyramide de cordes et petit train.")
#   lulu.set_description('en', "In its natural and shaded setting in the Loire Valley, Lulu Parc is an outdoor leisure park for children of all ages, from 1 year old. In summer, the slides become aquatic for even more sensations and freshness! All the attractions are at your disposal all day long (electric cars extra only). For more safety, Lulu Parc offers games adapted to the size and age of children. About fifteen games are also available to parents and accompanying adults for family fun! For only € 6, adults can have fun with their children on several inflatable games, trampolines, giant swings, go-karts, cable car, games of skill, pyramid of ropes and small train.")

#     golf = Activity.create(phone: "02 47 56 77 38",
#                                 url: "https://bluegreen.fr/tours-ardree/",
#                                 address: "37360 Saint-Antoine-du-Rocher, France",
#                                 price: "23 ~ ",
#                                 distance: "30km",
#                                 tag_list: "Loisir"
#                                   )

#     golf.image.attach(io: File.open(Rails.root.join("app/assets/images/bluegreen.jpg")),
#     filename: "bluegreen.jpg")

#   golf.set_name('fr', "Golf Bluegreen")
#   golf.set_name('en', "Golf Bluegreen")
#   golf.set_description('fr', "Dans son cadre naturel et ombragé du Val de Loire, golf Parc est un parc de loisirs en plein air pour enfants de tous âges, dès 1 an. En été, les toboggans deviennent aquatiques pour encore plus de sensations et de fraîcheur ! L'ensemble des attractions est à votre disposition à volonté toute la journée (voitures électriques en suppl. uniquement). Pour plus de sécurité, golf Parc propose des jeux adaptés à la taille et à l'âge des enfants. Une quinzaine de jeux est aussi accessible aux parents et accompagnateurs pour s'amuser en famille ! Pour seulement 6€, les adultes peuvent s'amuser avec leurs enfants sur plusieurs jeux gonflables, trampolines, balançoires géantes, kartings à pédales, téléphérique, jeux d'adresse, pyramide de cordes et petit train.")
#   golf.set_description('en', "In its natural and shaded setting in the Loire Valley, golf Parc is an outdoor leisure park for children of all ages, from 1 year old. In summer, the slides become aquatic for even more sensations and freshness! All the attractions are at your disposal all day long (electric cars extra only). For greater safety, golf Parc offers games adapted to the size and age of the children. About fifteen games are also available to parents and accompanying adults for family fun! For only € 6, adults can have fun with their children on several inflatable games, trampolines, giant swings, go-karts, cable car, games of skill, pyramid of ropes and small train.")

#         sport = Activity.create(phone: "06 08 48 14 63",
#                                 url: "http://www.parc-loisir-tours.com/",
#                                 address: "La Fontaine 37380 Monnaie, France",
#                                 price: "23 ~ ",
#                                 distance: "2km",
#                                 tag_list: "Loisir"
#                                   )

#     sport.image.attach(io: File.open(Rails.root.join("app/assets/images/sport.jpg")),
#     filename: "sport.jpg")

#   sport.set_name('fr', "Sport & Bien")
#   sport.set_name('en', "Sport & Bien")
#   sport.set_description('fr', "Multitude de sport et gadget à essayer, n'hésitez pas à y jeter un oeil, c'est à côté!")
#   sport.set_description('en', "Multitude of sports and gadgets to try, do not hesitate to take a look, it's close by!")

#     canoe = Activity.create(phone: "06 08 62 95 15",
#                                 url: "http://www.tours-canoe.fr/en/welcome/",
#                                 address: "La Frillière 37210, Vouvray, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     canoe.image.attach(io: File.open(Rails.root.join("app/assets/images/canoe.jpg")),
#     filename: "canoe.jpg")

#   canoe.set_name('fr', "Tours et Canoë")
#   canoe.set_name('en', "Tours and Canoe")
#   canoe.set_description('fr', "Tours & Canoë organise votre randonnée en canoë sur la Loire. Demandez-nous, on s’occupe de tout !
# Le lieu de rendez-vous est à notre base de Vouvray où se fait l’inscription et la préparation à la randonnée.
# Le départ de toutes les randonnées se fait à Chaumont sur Loire.
# La randonnée canoë sur la Loire est accessible à tous (à partir de 6 ans, savoir nager). La difficulté est de niveau 1-2 avec quelques passages un peu plus mouvementés sous les ponts.")
#   canoe.set_description('en', "Tours & Canoë organizes your canoe trip on the Loire. Ask us, we'll take care of everything!
# The meeting point is at our base in Vouvray where registration and preparation for the hike takes place.
# The start of all hikes is in Chaumont sur Loire.
# Canoeing on the Loire is accessible to all (from 6 years old, know how to swim). The difficulty is level 1-2 with a few more eventful passages under the bridges.")

#         quad = Activity.create(phone: "06 71 63 12 61",
#                                 url: "http://www.vitiquad37.com/",
#                                 address: "27 rue des Locquets 37210 Parçay-Meslay, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     quad.image.attach(io: File.open(Rails.root.join("app/assets/images/quad.jpg")),
#     filename: "quad.jpg")

#   quad.set_name('fr', "VitiQuad")
#   quad.set_name('en', "VitiQuad")
#   quad.set_description('fr', "RANDONNÉES GUIDÉES EN QUAD DANS LE VIGNOBLE DU VOUVRAY. OUVERT TOUTE L’ANNÉE SUR RÉSERVATION DU LUNDI AU SAMEDI
# Vous découvrirez, au guidon de nos quads, les vallées et coteaux de notre belle Touraine et vous parcourrez, de l’intérieur, ce trésor d’histoires et de terroirs.")
#   quad.set_description('en', "GUIDED QUAD TOURS IN THE VOUVRAY VINEYARD. OPEN ALL YEAR BY RESERVATION FROM MONDAY TO SATURDAY
# You will discover, on the handlebars of our quads, the valleys and hillsides of our beautiful Touraine and you will explore, from the inside, this treasure of history and terroirs.")

#     bowl = Activity.create(phone: "02 47 40 03 00",
#                                 url: "http://www.skybowl.fr/",
#                                 address: "Rue Jean Monnet 37390 Notre-Dame-d'Oé, France",
#                                 price: " ~ ",
#                                 distance: "10km",
#                                 tag_list: "Loisir"
#                                   )

#     bowl.image.attach(io: File.open(Rails.root.join("app/assets/images/bowl.jpg")),
#     filename: "bowl.jpg")

#   bowl.set_name('fr', "skybowl")
#   bowl.set_name('en', "skybowl")
#   bowl.set_description('fr', "Bowling, Billard, Arcades")
#   bowl.set_description('en', "Bowling, Billard, Arcades")

#     rando = Activity.create(phone: "02 47 40 25 26",
#                                 url: "http://www.cdrp37.fr/",
#                                 address: "rue de l'Aviation - 37210 Parçay-Meslay, France",
#                                 price: " ~ ",
#                                 distance: "",
#                                 tag_list: "Loisir"
#                                   )

#   rando.set_name('fr', "Randonnée")
#   rando.set_name('en', "Trek")
#   rando.set_description('fr', "")
#   rando.set_description('en', "")

#     rando.image.attach(io: File.open(Rails.root.join("app/assets/images/rando.jpg")),
#     filename: "rando.jpg")



# #     # ------------------------------------------------



#     vignoble1 = Activity.create(phone: "02 47 52 75 03",
#                               url: "https://cavedevouvray.com/",
#                               address: "38 rue de la vallée coquette, 37210 Vouvray France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble1.image.attach(io: File.open(Rails.root.join("app/assets/images/vouvray.jpg")),
#     filename: "vouvray.jpg")

#   vignoble1.set_name('fr', "Cave de Vouvray")
#   vignoble1.set_name('en', "Cellar of Vouvray")
#   vignoble1.set_description('fr', "La Cave des Producteurs de Vouvray a été créée en 1953 à l’initiative d’un petit groupe de vignerons. Actuellement, la cave coopérative de Vouvray compte une trentaine de passionnés qui poursuivent l’aventure avec près de 400 ha de vignes réparties sur toute l’appellation Vouvray. L’alcool est dangereux pour la santé, à consommer avec modération.")
#   vignoble1.set_description('en', "The Cave des Producteurs de Vouvray was created in 1953 on the initiative of a small group of winegrowers. Currently, the cooperative cellar of Vouvray has about thirty enthusiasts who continue the adventure with nearly 400 ha of vines spread over the entire Vouvray appellation. Alcohol is dangerous for your health, consume in moderation.")

#         vignoble2 = Activity.create(phone: "02 47 52 60 77",
#                               url: "https://www.vouvray.com/",
#                               address: "Rue de Moncontour 37210 Vouvray France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble2.image.attach(io: File.open(Rails.root.join("app/assets/images/montcontour.jpg")),
#     filename: "montcontour.jpg")

#   vignoble2.set_name('fr', "Montcontour")
#   vignoble2.set_name('en', "Montcontour")
#   vignoble2.set_description('fr', "
# SURPLOMBANT LA LOIRE, LE CHÂTEAU MONCONTOUR S’ÉLÈVE À FLANC DE COTEAU AU COEUR DE L’APPELLATION VOUVRAY.
# LE SITE OFFRE UN POINT DE VUE REMARQUABLE SUR TOUTE LA VALLÉE LIGÉRIENNE.
# Depuis 1994, avec passion et engagement, la famille Feray a su préserver et embellir ce château pour en faire l’un des sites historiques remarquables du Val de Loire.
# Le vignoble, l’un des plus anciens de Touraine, est aujourd’hui classé parmi les propriétés viticoles les plus prestigieuses du Val de Loire.
# Le domaine court sur 130 hectares à travers le coteau et la vallée. L’alcool est dangereux pour la santé, à consommer avec modération.")
#   vignoble2.set_description('en', "OVERLOOKING THE LOIRE, CHÂTEAU MONCONTOUR Rises on the side of a hill in the heart of the Vouvray appellation.
# THE SITE OFFERS A REMARKABLE POINT OF VIEW OVER THE ENTIRE LIGERIAN VALLEY.
# Since 1994, with passion and commitment, the Feray family has managed to preserve and embellish this castle to make it one of the remarkable historical sites of the Loire Valley.
# The vineyard, one of the oldest in Touraine, is today ranked among the most prestigious wine estates in the Loire Valley.
# The estate runs over 130 hectares across the hillside and the valley. Alcohol is dangerous for your health, consume in moderation.")

#             vignoble3 = Activity.create(phone: "02 47 52 74 95",
#                               url: "http://www.domaineallias.com/",
#                               address: "106 rue de la Vallée Coquette, 37210 VOUVRAY",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#   vignoble3.set_name('fr', "Domaine Allias")
#   vignoble3.set_name('en', "Domaine Allias")
#   vignoble3.set_description('fr', "L'exploitation est un domaine entièrement viticole de 14 hectares, dont le centre est le Clos du Petit Mont. Du raisin de ses vignes sont obtenus des vins élaborés avec soins. Depuis 5 générations, le savoir-faire se transmet : culture traditionnelle, vendanges manuelles, tris successifs, fermentations longues…
# Dès 2003, la culture biologique a été appliquée officiellement sur toute l'exploitation. Ainsi sont obtenus des vins fins et typés qui mûriront lentement et pourront devenir centenaires.
# L’alcool est dangereux pour la santé, à consommer avec modération.")
#   vignoble3.set_description('en', "The exploitation is an entirely wine-growing domain of 14 hectares, the center of which is the Clos du Petit Mont. From the grapes of its vines, wines produced with care are obtained. For 5 generations, the know-how has been passed on: traditional cultivation, manual harvesting, successive sorting, long fermentation ...
# From 2003, organic farming was officially applied throughout the farm. In this way, fine and distinctive wines are obtained which will ripen slowly and may become a hundred years old.
# Alcohol is dangerous for your health, consume in moderation.")

#     vignoble3.image.attach(io: File.open(Rails.root.join("app/assets/images/vin1.jpg")),
#     filename: "vin1.jpg")

#     vignoble4 = Activity.create(phone: "02 47 52 77 77",
#                               url: "http://www.vouvray-guertin.com/",
#                               address: "37210 Vouvray, France",
#                               price: "",
#                               distance: "14km",
#                               tag_list: "Vignobles"
#                             )

#     vignoble4.image.attach(io: File.open(Rails.root.join("app/assets/images/vin2.jpg")),
#     filename: "vin2.jpg")
#     #  // Montlouis-sur Loire ~ 20 km // Amboise ~ 27 km  //  Chinon ~ 60 km // Bourgueil et Saint-Nicolas de Bourgueil ~ 60 km

#   vignoble4.set_name('fr', "Thierry Guertin - Cellier de la verrine")
#   vignoble4.set_name('en', "Thierry Guertin - Cellier de la verrine")
#   vignoble4.set_description('fr', "Site en construction. L’alcool est dangereux pour la santé, à consommer avec modération.")
#   vignoble4.set_description('en', "Construction site. Alcohol is dangerous for your health, consume in moderation.")


# #     # ----------------------------------


#     traiteur1 = Activity.create(phone: "06 74 43 78 58",
#                               url: "https://www.facebook.com/morgandometchef",
#                               address: "Crotelles, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur1.image.attach(io: File.open(Rails.root.join("app/assets/images/morgandomet.jpg")),
#     filename: "morgandomet.jpg")

#   traiteur1.set_name('fr', "Morgan Domet - Chef à Domicile")
#   traiteur1.set_name('en', "Morgan Domet - Home Chef")
#   traiteur1.set_description('fr', "Traiteur, chef de cuisine à domicile pour vos repas en amis ou en famille.")
#   traiteur1.set_description('en', "Caterer, home chef for your meals with friends or family.")

#     traiteur2 = Activity.create(phone: "06 69 60 65 76",
#                               url: "https://www.facebook.com/Philippe-Traiteur-113540753667009/",
#                               address: "37380 Monnaie, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur2.image.attach(io: File.open(Rails.root.join("app/assets/images/philipe.jpg")),
#     filename: "philipe.jpg")

#   traiteur2.set_name('fr', "Philippe Menager - Chef à Domicile")
#   traiteur2.set_name('en', "Philippe Menager - Home Chef")
#   traiteur2.set_description('fr', "Philippe Traiteur, pour se régaler entre amis, en famille ou en amoureux chez vous.
# Nous élaborons avec vous sur mesure des buffets, repas chaud, ateliers plancha, pour tous types d'événements !
# Et proposons des plats a emporter depuis l'atelier!")
#   traiteur2.set_description('en', "Philippe Caterer, to feast with friends, family or lovers at home.
# We work with you to tailor buffets, hot meals, plancha workshops, for all types of events!
# And offer take-away meals from the workshop!")

#     traiteur3 = Activity.create(phone: "02 47 40 40 40",
#                               url: "https://www.hardouin.fr/",
#                               address: "Vouvray, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur3.image.attach(io: File.open(Rails.root.join("app/assets/images/hardouin.jpg")),
#     filename: "hardouin.jpg")

#   traiteur3.set_name('fr', "Hardouin - Traiteur")
#   traiteur3.set_name('en', "Hardouin - Caterer")
#   traiteur3.set_description('fr', "La Maison Hardouin a acquis ses lettres de noblesse avec la charcuterie de tradition. L’excellence de son travail lui a valu d’être régulièrement sollicitée pour l’organisation de repas de groupe.
# L’entreprise a donc tout naturellement développé une activité de traiteur de réception. Elle s’appuie aujourd’hui sur des équipes dédiées à chacune de ses activités, avec une même exigence : la satisfaction client.")
#   traiteur3.set_description('en', "Maison Hardouin has acquired its letters of nobility with traditional charcuterie. For the excellence of her work, she has been regularly asked to organize group meals.
# The company therefore naturally developed a reception caterer activity. Today, it relies on teams dedicated to each of its activities, with the same requirement: customer satisfaction.")

#     traiteur4 = Activity.create( phone: "02 47 85 46 46",
#                               url: "http://www.marceul-receptions.eu/",
#                               address: "37390 Notre Dame D'Oé, France",
#                               price: "",
#                               distance: "",
#                               tag_list: "Traiteur"
#                             )

#     traiteur4.image.attach(io: File.open(Rails.root.join("app/assets/images/marceul.jpg")),
#     filename: "marceul.jpg")

#   traiteur4.set_name('fr', "Marceul - Reception")
#   traiteur4.set_name('en', "Marceul - Reception")
#   traiteur4.set_description('fr', "MARCEUL Réceptions, traiteur en Val-de-Loire vous accompagne depuis 1983 dans vos réceptions privées, de mariage, ou professionnelles. Vos repas sont élaborés dans notre laboratoire aux normes européennes (agrément CEE) pour répondre aux exigences de qualité que vous attendez.")
#   traiteur4.set_description('en', "Supermarket")


# # # -----------------------------------------------------


#     resto1 = Activity.create(phone: "02 47 22 86 81",
#                               url: "https://fr.restaurantguru.com/Restaurant-La-Guizarderie-France",
#                               address: "chemin rural de la croix jean delahaie, 37380 Crotelles, France",
#                               price: "20 ~ ",
#                               distance: "1km",
#                               tag_list: "Restauration"
#                             )

#     resto1.image.attach(io: File.open(Rails.root.join("app/assets/images/guizarderie.jpg")),
#     filename: "guizarderie.jpg")

#   resto1.set_name('fr', "La Guizarderie")
#   resto1.set_name('en', "La Guizarderie")
#   resto1.set_description('fr', "Restaurant français convivial.")
#   resto1.set_description('en', "Friendly French restaurant.")


#     resto2 = Activity.create(phone: "02 47 56 10 34",
#                               url: "https://www.restaurant-lepicurien.com/",
#                               address: "53 Rue Nationale, 37380 Monnaie, France",
#                               price: "25 ~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto2.image.attach(io: File.open(Rails.root.join("app/assets/images/epicurien.jpg")),
#     filename: "epicurien.jpg")

#   resto2.set_name('fr', "L'Epicurien")
#   resto2.set_name('en', "L'Epicurien")
#   resto2.set_description('fr', "Restaurant français convivial")
#   resto2.set_description('en', "Friendly French restaurant")


#     resto3 = Activity.create(phone: "02 47 61 46 04",
#                               url: "https://www.lebouchontourangeau.com/",
#                               address: "22 Rue du grand marché 37000 Tours, France",
#                               price: "25 ~ ",
#                               distance: "20km",
#                               tag_list: "Restauration"
#                             )

#     resto3.image.attach(io: File.open(Rails.root.join("app/assets/images/bouchon.jpg")),
#     filename: "bouchon.jpg")

#   resto3.set_name('fr', "Le bouchon tourangeau")
#   resto3.set_name('en', "Le bouchon tourangeau")
#   resto3.set_description('fr', "Degustez la cuisine locale!")
#   resto3.set_description('en', "Try out some local dishes!")

#     resto4 = Activity.create(phone: "02 47 52 62 18",
#                               url: "https://gueulenoirevouvray.wixsite.com/les-gueules-noires-",
#                               address: "66 rue de la vallée coquette 37210 Vouvray France",
#                               price: " 25~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto4.image.attach(io: File.open(Rails.root.join("app/assets/images/gueulles.jpg")),
#     filename: "gueulles.jpg")

#   resto4.set_name('fr', "Les gueules noires")
#   resto4.set_name('en', "Les gueules noires")
#   resto4.set_description('fr', "Restaurant français convivial")
#   resto4.set_description('en', "Friendly French restaurant")

#     resto5 = Activity.create(phone: "02 47 52 70 18",
#                               url: "https://www.valdeloire-france.com/organiser/restaurants/le-val-joli",
#                               address: "Le val Joli, 37210 Vouvray, France",
#                               price: " 26 ~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto5.image.attach(io: File.open(Rails.root.join("app/assets/images/valjoli.jpg")),
#     filename: "valjoli.jpg")

#   resto5.set_name('fr', "le Val Joli")
#   resto5.set_name('en', "le Val Joli")
#   resto5.set_description('fr', "Restaurant français convivial")
#   resto5.set_description('en', "Friendly French restaurant")

#     resto6 = Activity.create(phone: "02 47 45 05 05",
#                               url: "http://www.restaurant-la-cave-com/",
#                               address: "68 quai Albert Baillet 37270 Montlouis sur loire, France",
#                               price: " 25~ ",
#                               distance: "10km",
#                               tag_list: "Restauration"
#                             )

#     resto6.image.attach(io: File.open(Rails.root.join("app/assets/images/cave.jpg")),
#     filename: "cave.jpg")

#   resto6.set_name('fr', "La cave Montlouis")
#   resto6.set_name('en', "La cave Montlouis")
#   resto6.set_description('fr', "Restaurant français convivial")
#   resto6.set_description('en', "Friendly French restaurant")

#     resto7 = Activity.create( phone: "02 47 29 95 31",
#                               url: "https://le-pizzaiolo-37380.webnode.fr/",
#                               address: "41 Rue Nationale, 37380 Monnaie, France",
#                               price: " 10~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto7.image.attach(io: File.open(Rails.root.join("app/assets/images/pizza.jpg")),
#     filename: "pizza.jpg")

#   resto7.set_name('fr', "Le Pizzaiolo")
#   resto7.set_name('en', "Le Pizzaiolo")
#   resto7.set_description('fr', "Pizza traditionnelle à emporter.")
#   resto7.set_description('en', "Traditional Pizza to take away.")

#     resto8 = Activity.create( phone: "02 47 59 90 48",
#                               url: "https://fr.restaurantguru.com/JUST-DO-EAT-Monnaie",
#                               address: "32 Rue Nationale, 37380 Monnaie, France",
#                               price: " 10~ ",
#                               distance: "4km",
#                               tag_list: "Restauration"
#                             )

#     resto8.image.attach(io: File.open(Rails.root.join("app/assets/images/justdoeat.jpg")),
#     filename: "justdoeat.jpg")

#   resto8.set_name('fr', "Just do eat")
#   resto8.set_name('en', "Just do eat")
#   resto8.set_description('fr', "Burger, tacos, sandwiches & couscous à emporter sur reservation.")
#   resto8.set_description('en', "Burger, tacos, sandwiches & couscous to take away on reservation.")

# #     # --------------------------------------------------------

#     gaz1 = Activity.create(phone: "",
#                               url: "",
#                               address: "la croix poëlon, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Station service"
#                             )

#     gaz1.image.attach(io: File.open(Rails.root.join("app/assets/images/auchan.jpg")),
#     filename: "auchan.jpg")

#   gaz1.set_name('fr', "Station service Auchan Monnaie")
#   gaz1.set_name('en', "Gaz Station Auchan Monnaie")
#   gaz1.set_description('fr', "")
#   gaz1.set_description('en', "")

#     gaz2 = Activity.create(phone: "",
#                               url: "",
#                               address: "37276 Villedomer, France",
#                               price: " ~ ",
#                               distance: "6km",
#                               tag_list: "Station service"
#                             )

#   gaz2.set_name('fr', "TOTAL Station service Villedomer")
#   gaz2.set_name('en', "TOTAL Gaz Station Villedomer")
#   gaz2.set_description('fr', "")
#   gaz2.set_description('en', "")
#     gaz2.image.attach(io: File.open(Rails.root.join("app/assets/images/total.jpg")),
#     filename: "total.jpg")


# #        # --------------------------------------------------------


#     commerce1 = Activity.create(phone: "",
#                               url: "",
#                               address: "la croix poëlon, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce1.image.attach(io: File.open(Rails.root.join("app/assets/images/monnaie.jpg")),
#     filename: "monnaie.jpg")

#   commerce1.set_name('fr', "Auchan Monnaie")
#   commerce1.set_name('en', " Auchan Monnaie")
#   commerce1.set_description('fr', "Supermarché")
#   commerce1.set_description('en', "Supermarket")

#     commerce2 = Activity.create(phone: "02 47 56 87 18",
#                               url: "",
#                               address: "Rue du petit Versailles, 37110 Château-Renault, France",
#                               price: " ~ ",
#                               distance: "8km",
#                               tag_list: "Commerce"
#                             )

#     commerce2.image.attach(io: File.open(Rails.root.join("app/assets/images/inter.jpg")),
#     filename: "inter.jpg")

#   commerce2.set_name('fr', "Intermarché Château-Renault")
#   commerce2.set_name('en', " Intermarché Château-Renault")
#   commerce2.set_description('fr', "Supermarché")
#   commerce2.set_description('en', "Supermarket")


#     commerce3 = Activity.create(phone: "02 47 56 10 36",
#                               url: "",
#                               address: "3 Place Jean-Baptiste Moreau, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )
#   commerce3.set_name('fr', "Pharmacie Piron")
#   commerce3.set_name('en', "Pharmacie Piron")
#   commerce3.set_description('fr', "")
#   commerce3.set_description('en', "Drugstore")


#     commerce3.image.attach(io: File.open(Rails.root.join("app/assets/images/pharmacie.jpg")),
#     filename: "pharmacie.jpg")


#     commerce4 = Activity.create(phone: "02 47 86 43 05",
#                               url: "",
#                               address: "80 Rue nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce4.image.attach(io: File.open(Rails.root.join("app/assets/images/pain.jpg")),
#     filename: "pain.jpg")

#   commerce4.set_name('fr', "Au pain Perdu - Boulangerie")
#   commerce4.set_name('en', "Au pain Perdu - Bakery")
#   commerce4.set_description('fr', "")
#   commerce4.set_description('en', "")


#     commerce5 = Activity.create(phone: "02 47 38 40 51",
#                               url: "",
#                               address: "21 Rue nationale, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )
#     commerce5.image.attach(io: File.open(Rails.root.join("app/assets/images/boudet.jpg")),
#     filename: "boudet.jpg")

#   commerce5.set_name('fr', "Boudet - Boulangerie")
#   commerce5.set_name('en', "Boudet - Bakery")
#   commerce5.set_description('fr', "")
#   commerce5.set_description('en', "")


#     commerce6 = Activity.create(phone: "02 47 56 11 05",
#                               url: "",
#                               address: "1 Place Jean-Baptiste Moreau, 37380 Monnaie, France",
#                               price: " ~ ",
#                               distance: "4km",
#                               tag_list: "Commerce"
#                             )

#     commerce6.image.attach(io: File.open(Rails.root.join("app/assets/images/cafe.jpg")),
#     filename: "cafe.jpg")

#   commerce6.set_name('fr', "Café du centre")
#   commerce6.set_name('en', "Café du centre")
#   commerce6.set_description('fr', "")
#   commerce6.set_description('en', "Can also buy cigarette")


# #    # --------------------------------------------------------

#     puts " #{Activity.count} activities were created"
