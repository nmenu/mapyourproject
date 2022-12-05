# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#----------------------------------------------------
#-------CLEANING DATABASE----------------------------
print "Database cleaning... "
User.destroy_all
puts "done!"

puts "BEFORE seed:"
puts "User count: #{User.count}"
puts "Project count: #{Project.count}"
puts "Category count: #{Category.count}"


#----------------------------------------------------
#--------SEEDING USER 1------------------------------
print "Seeding User 1... "
user = User.create!(
  email: "nico@lewagon.com",
  password: "123456",
  company_name: "Architelier SA",
  description: "Atelier d'architecture",
  address: "Rue de la gare 10",
  city: "Marin",
  website: "httpw://www.lewagon.com",
  zip_code: 2074
)

user.avatar.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/avatars/avatar1.jpeg'),
  filename: 'avatar1.jpeg',
  content_type: 'image/jpeg'
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 1 OF USER 1-------------------
print "Seeding Offer 1 of User 1... "
project = Project.create!(
  title: "Duplex Les Roseaux",
  description: "Les travaux que nous avons réalisé là-bas sont les suivants : architecture d intérieur, ingénierie, carrelage, lissage des murs, peinture des lambris dans le séjour et peinture cheminée, démolition des arches pour créer des lignes plus structurées, modification de l’escalier, béton ciré, etc.",
  detail: "Le duplex est un un logement constitué de deux étages réunis par l'intérieur, au sein d'un même immeuble.
  Dans certains cas, le duplex a été réalisé par un copropriétaire ayant acheté deux logements, l'un au-dessus de l'autre.
  Une trémie est créée dans le plancher du niveau supérieur afin d'y aménager un escalier intérieur.
  C'est typiquement une adaptation du logement pour convenance personnelle.
  Quand un duplex a été créé par un copropriétaire et non par un promoteur immobilier, toutes les pièces se trouvent être doublées, en particulier les pièces dites humides.
  Cela signifie que dans le prix d'achat ces pièces humides vont être payées deux fois.
  Le coût des travaux vient se rajouter au prix d'achat des deux appartements.
  Un duplex conçu par un architecte est un logement rationnel sans double emploi.
  Dans le cas d'un logement adapté par le copropriétaire, nous sommes dans un logement adapté pour convenance personnelle et, le temps venu de la mise en vente du duplex, la difficulté va consister à trouver un candidat acquéreur intéressé par cet habitat double.
  S'agissant d'un duplex de convenance, la tache risque d'être compliquée.
  C'est la raison pour laquelle il est préférable de rétablir l'autonomie des deux logements en supprimant la trémie et l'escalier intérieur et en faisant les travaux de remise en état suite à la création du nouveau plancher.
  De la sorte, l'actif immobilier sera composé de deux logements distincts beaucoup plus faciles à vendre.
  Dans l'évaluation, l'expert chiffrera les travaux de remise en état et valorisera chaque appartement de façon distincte.
  Lorsque le vendeur ne peut pas effectuer les travaux faute de moyens financiers, il conviendra d'envisager la vente à un marchand de biens dont l'activité consiste à acheter des biens immobiliers en vue de les rénover ou de les transformer et de les revendre avec une marge bénéficiaire.
  Le recours à un marchand de biens impacterait négativement le prix du duplex payé au vendeur.",
  owner: "Geco multi",
  main_contractor: "Attali. Engineers",
  year_completion: "2018",
  duration: 24,
  budget: 10000000,
  labor_force: 25,
  latitude: 46.49425038134817,
  longitude: 6.457014135924169,
  user: user
)

5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/1_1.jpg'),
    filename: '1_1.jpg',
    content_type: 'image/jpg']

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/1_2.jpg'),
    filename: '1_2.jpg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/1_3.jpg'),
    filename: '1_3.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/1_4.jpg'),
    filename: '1_4.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/1_5.jpg'),
    filename: '1_5.jpg',
    content_type: 'image/jpg'
  ]
end

project.ifc_model.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/1/IFC2x3_Duplex_A_20110907.ifc'),
  filename: 'IFC2x3_Duplex_A_20110907.ifc'
)

project.pdf.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/rutelins.pdf'),
  filename: 'rutelins.pdf'
)

Category.create!(
  description: "Description de l'image",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 2 OF USER 1-------------------
print "Seeding Offer 2 of User 1... "
project = Project.create!(
  title: "Residence Perez ",
  description: "Sur les hauteurs de Glovelier, la Villa Duna – une résidence privée conçue par Marianne Preveteau et Victor Perez (chef de projet : Benoît Sgarbi) – se pare des surfaces Marmi Maximum de Fiandre Architectural Surfaces et affirme une style pur à l'élégance raffinée.",
  detail: "Avec une vue époustouflante sur la mer méditerranée en plein cœur de la Côte d’Azur, Villa Duna est une résidence privée de 600 m² à laquelle les architectes ont donné une ligne sobre et résolument contemporaine qui souligne la beauté de la nature environnante.

  Le projet a été dessiné par Marianne Preveteau et Victor Perez. Benoit Sgarbi, le chef de projet, a sélectionné les revêtements de la collection Marmi Maximum de Fiandre Architectural Surfaces pour cette réalisation. Grâce à la polyvalence des matériaux Fiandre, les architectes ont pu habiller les sols, murs et meubles de la résidence et créer ainsi un décor unique et harmonieux.

  Le format choisi pour habiller toutes les surfaces de la villa est l’innovant 300×150 cm Maximum Fiandre Extralite® ; il offre une grande liberté d’utilisation tout en respectant les standards très élevés de légèreté, de résistance et de ductilité.
  Pour les couleurs, le choix s’est porté la nuance Calacatta Light, un délicat ton crème rehaussé de subtiles veines gris clair, et sur la nuance Pietra Grey, un aplat entre le brun et le gris anthracite parcouru de fines et discrètes veinures blanches. Une finition brillante a été choisie pour les deux gammes.

  Un élément architectural d’une remarquable finesse attire le regard, il s’agit de l’escalier pivotant et ses marches suspendues. Le revêtement en Pietra Grey donne l’impression qu’elles sont taillées dans le marbre, et l’effet de légèreté est accentué par la rambarde en verre transparent.",
  owner: "Mario Grapelli",
  main_contractor: "Titouan Sarl",
  year_completion: "2001",
  duration: 12,
  budget: 2000000,
  labor_force: 15,
  latitude: 47.35065093320557,
  longitude: 7.194970804890431,
  user: user
)

5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/2/2_1.jpg'),
    filename: '2_1.jpg',
    content_type: 'image/jpg']

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/2/2_2.jpg'),
    filename: '2_2.jpg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/2/2_3.jpg'),
    filename: '2_3.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/2/2_4.jpg'),
    filename: '2_4.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/2/2_5.jpg'),
    filename: '2_5.jpg',
    content_type: 'image/jpg'
  ]
end

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 3 OF USER 1-------------------
print "Seeding Offer 3 of User 1... "
project = Project.create!(
  title: "Clinique, Yverdon",
  description: "Projet de construction d'un bâtiment d'une clinique médicale. Il s'agit d'un bâtiment R+2 construit au quartier Messassi en vue d'en faire une clinique pédiatrique et gynécologique. Notre mission: - Conception architecturale - Etudes structurales et ingénierie des lots techniques - Devis estimatif-quantitatif - Documentation - Business Plan",
  detail: "White Arkitekter et HPP Architektes ont été sélectionnés pour concevoir la nouvelle clinique médicale, NMK. Les deux cabinets, qui disposent d'une vaste expérience en matière de conception de soins de santé et d'architecture en bois, ont pour objectif de réaliser un projet dans lequel, outre les aspects d'architecture curative et d'organisation fonctionnelle optimisée, les éléments d'un concept global intégral et durable jouent également un rôle essentiel. La nouvelle clinique médicale de l'hôpital universitaire de Tübingen sera l'un des 34 hôpitaux universitaires d'Allemagne à contribuer à la combinaison réussie d'une médecine, d'une recherche et d'un enseignement performants.",
  owner: "Ville Yverdon",
  main_contractor: "CLI Ingénieurs",
  year_completion: "2020",
  duration: 36,
  budget: 20000000,
  labor_force: 100,
  latitude: 46.77862658517543,
  longitude: 6.6248638498262835,
  user: user
)

5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/3/3_1.jpg'),
    filename: '3_1.jpeg',
    content_type: 'image/jpg']

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/3/3_2.jpg'),
    filename: '3_2.jpg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/3/3_3.jpg'),
    filename: '3_3.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/3/3_4.jpg'),
    filename: '3_4.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User1/3/3_5.jpg'),
    filename: '3_5.jpg',
    content_type: 'image/jpg'
  ]
end

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING USER 2------------------------------
print "Seeding User 2... "
user = User.create!(
  email: "brice@lewagon.com",
  password: "123456",
  company_name: "Brice Infrastructure SA",
  description: "Entreprise de Travaux Public",
  address: "Route de Lausanne 64",
  city: "Renens",
  website: "httpw://www.lewagon.com",
  zip_code: 1020

)

user.avatar.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/avatars/avatar2.jpeg'),
  filename: 'avatar2.jpeg',
  content_type: 'image/jpeg'
)

puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 1 OF USER 2-------------------
print "Seeding Offer 1 of User 2... "

project = Project.create!(
  title: "N16 - Bözingenfeld",
  description: "Le projet du Taubenloch lot Nord a pour but d’assainir un tronçon de l’autoroute
  N16 d’une longueur d’environ 1 km. Ce lot s’inscrit dans le projet plus vaste
  d’assainissement de l’autoroute N16 reliant Boncourt à Bienne qui constitue le
  principal axe routier à travers le canton du Jura et le Jura Bernois.",
  detail: "Sur ce lot, les voies montantes et descendantes de ce tronçon empruntent successivement, pour chacune d’
  entre-elles, un tunnel spécifique et une succession de ponts ou de plates formes soutenues par des murs.
  Chaque voie dispose donc deses propres ouvrages d’arts.
  La voie montante dispose en outre d’une bretelle d’accès grâce à un pont multi-poutresL’assainissement réalisés
  consiste à :
   • Renforcer et assainir structurellement les ouvrages : ces travaux ont été rendus
  nécessaire par la détérioration des structures en béton soumis à un climat les
  exposants au gel et donc au sel de déverglaçage.
  • Augmenter la largeur des voies de circulation sur les ponts et plateformes
  extérieures ainsi que la section des tunnels.
  Ce lot se caractérise donc par :
  • Une forte densité d’ouvrage permettant notamment le franchissement des
  gorges du Taubenloch qui constitue un site remarquable par l’encaissement de la
  rivière de la Suze. La topographie du secteur a conduit à la réalisation des appuis
  des ouvrages à flanc de montagne dans des pentes très raides rendant obligatoire
  l’accès sur les appuis à assainir depuis les tabliers des ouvrages. En conséquence,
  les possibilités d’accès en termes d’approvisionnement ou d’évacuation
  des matériaux sur le ce lot pour chacune des voies se résument à chaque
  extrémité d’un tronçon de 1 km obligeant donc à une coordination très fine des
  opérations.
  • les assainissements prévus font appel à un grand nombre de travaux de
  spécialité comme les travaux de démolition, d’hydrodémolition de béton armé,
  d’excavation et de revêtement en tunnel, pose d’étanchéité en tunnel et sur
  ponts, réalisation de parois cloués et berlinoises, pose de tirants actifs et passifs,
  coffrage ferraillage et bétonnage d’élévation de mur et dalle, assainissement de
  surface de tablier par mortier et béton autoplaçant, travaux de génie civil en
  tranchée et en tunnel, réfection des voies de circulation par mise en œuvre
  d’asphaltes et d’enrobé, pose de glissières de sécurité, travaux acrobatiques,
  béton projeté voie sèches et voie humide. Pose d’une conduite incendie",
  owner: "Geco multi",
  main_contractor: "Etat de Bern",
  year_completion: "2021",
  duration: 36,
  budget: 40000000,
  labor_force: 80,
  latitude: 47.17885504795524,
  longitude: 7.246423324920784,
  user: user
)
5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/1/1.jpeg'),
    filename: '1.jpeg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/1/2.jpeg'),
    filename: '2.jpeg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/1/3.jpeg'),
    filename: '3.jpeg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/1/4.jpeg'),
    filename: '4.jpeg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/1/5.jpeg'),
    filename: '5.jpeg',
    content_type: 'image/jpg'
  ]
end

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"


#----------------------------------------------------
#--------SEEDING OFFER 2 OF USER 2-------------------
print "Seeding Offer 2 of User 2... "

project = Project.create!(
  title: "Tunnel du Bois des Rutelins",
  description: "Le tunnel du Bois des Rutelins se situe sur la route J10 (route principale
  Neuchâtel - Pontarlier - Paris) entre les localités de St Sulpice et Les
  Verrières dans le Jura neuchâtelois. Cette correction de route sur une
  longueur de 600 mètres supprime une partie sinueuse et dangereuse de la
  route appelée Virage de la mort",
  detail: "La méthode
  Le tunnel du Bois des Rutelins est un tunnel creusé à l'explosif avec un avancement en
  section divisée afin de limiter les vibrations.
  En effet, la présence de la ligne TGV Berne-Paris, à proximité du tunnel du Bois des
  Rutelins, nécessite une attention particulière au niveau des vibrations lors des tirs.
  L'avancement en pleine section étant interdit, le bureau technique d'Infra Tunnel SA a
  donc imaginé une variante prévoyant également un avancement en section divisée mais
  au lieu d'utiliser une division standard calotte-stross, l'avancement s'effectue en
  division noyau-alésage.
  Cette variante a également permis une économie financière de 10% du montant des
  travaux ainsi qu'une diminution de 13% de la durée d'excavation.
  La géologie
  Le tunnel traverse deux couches du calcaire du Jura :
  - Le Kimméridgien sur 3/4 de la longueur en aval
  - Le Portlandien inférieur et supérieur sur 1/4 de la longueur en amont",
  owner: "Canton NE",
  main_contractor: "SPC",
  year_completion: "2014",
  duration: 16,
  budget: 14400000,
  labor_force: 24,
  latitude: 46.91139271003274,
  longitude: 6.5447608021140695,
  user: user
)

5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/2_1.jpg'),
    filename: '2_1.jpg',
    content_type: 'image/jpg']

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/2_2.jpg'),
    filename: '2_2.jpeg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/2_3.jpg'),
    filename: '2_3.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/2_4.jpg'),
    filename: '2_4.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/2_5.jpg'),
    filename: '2_5.jpg',
    content_type: 'image/jpg'
  ]
end

project.ifc_model.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/IFC4x3_UT-Earthworks-01.ifc'),
  filename: 'IFC4x3_UT-Earthworks-01.ifc'
)

project.pdf.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/2/rutelins.pdf'),
  filename: 'rutelins.pdf'
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 3 OF USER 2-------------------
print "Seeding Offer 3 of User 2... "

project = Project.create!(
  title: "Tunnels du Mormont",
  description: "Les tunnels du Mormont sont situés sur la ligne 210 Daillens Sud - Bienne
  entre la gare d'Eclépens et la halte de Bavois. A la sortie d'Eclépens se
  succèdent le tunnel Sud de 326 m et le tunnel Nord de 200 m. Un tronçon de
  78 m à ciel ouvert sépare les deux tunnels à Entreroches.",
  detail: "Travaux Souterrains
  - Réalisation de deux nouveaux tunnels de respectivement 326 m et 200 m et d'une
  section de 58 m2.
  - Assainissement des tunnels existants en maintenant le trafic ferroviaire, avec
  notamment l’abaissement du radier de 55 cm de profondeur.
  - Déplacement de la zone de dépotage des Huiles Minérales SA et construction d'un
  mur de protection de 180 m de longueur et d'une hauteur apparente de 2,2 m.
  - Excavation du portail Eclépens au brise-roche hydraulique sur une hauteur de 20 m
  à proximité des voies.
  - Raccordement de l’usine Holcim sur le nouveau tracé ferroviaire.
  Méthode de construction des tunnels
  L'excavation est effectuée au moyen d'engins à attaque ponctuelle. Excavation de type
  NATM à la haveuse et avancement sous voûte parapluie et cintres HEB 180 à la pelle
  tunnel équipée de BRH et fraise dans la zone morainique.
  Des sondages de reconnaissance à l'avancement avec enregistrement de paramètres
  sont réalisés systématiquement tous les 30 à 40 mètres sur 45 m de profondeur.
  Le volume de terrassement représente environ 53'000 m3 avec 85% de calcaire et
  15% de moraine. Les calcaires ont été valorisés en les acheminant par rail à l'usine
  Holcim d'Eclépens.
  Travaux de Génie Civil
  - Assainissement de la gare d’Eclépens
  - Réalisation de 2 quais H=55cm de 150 m
  - Réfection de la rampe piétonne sur la voie 2
  - Génie civil câble et drainage des installations ferroviaires
  - Mâts de ligne de contact
  - Rampe et quai de chargement
  - Réfection du poste de dépotage d’HMSA avec un radier étanche, mur de
  protection de 180 m avec coffrage type 4.1 h= 2.2 m et réalisation des
  sellettes pour les rails.",
  owner: "CFF",
  main_contractor: "Monod Piguet + Associés CSD",
  year_completion: "2010",
  duration: 29,
  budget: 20000000,
  labor_force: 25,
  latitude: 46.66020618045113,
  longitude: 6.551665066987425,
  user: user
)
5.times do
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/3/3_1.jpg'),
    filename: '3_1.jpg',
    content_type: 'image/jpg']

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/3/3_2.jpg'),
    filename: '3_2.jpeg',
    content_type: 'image/jpg'
  ]

  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/3/3_3.jpg'),
    filename: '3_3.jpg',
    content_type: 'image/jpg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/3/3_4.jpeg'),
    filename: '3_4.jpg',
    content_type: 'image/jpeg'
  ]
  project.images.attach [
    io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/seed/User2/3/3_5.jpeg'),
    filename: '3_5.jpeg',
    content_type: 'image/jpeg'
  ]
end

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"


#----------------------------------------------------
#--------SEEDING USER 3------------------------------
print "Seeding User 3... "

user = User.create!(
  email: "diogo@lewagon.com",
  password: "123456",
  company_name: "Volumic Labs",
  description: "Design et Architecture Sarl.",
  address: "Quai Wilsoon 5",
  city: "Genève",
  website: "httpw://www.lewagon.com",
  zip_code: 1201
)

user.avatar.attach(
  io: URI.open('https://mapyourproject.s3.eu-west-3.amazonaws.com/avatars/avatar3.jpeg'),
  filename: 'avatar3.jpeg',
  content_type: 'image/jpeg'
)

puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 1 OF USER 3-------------------
print "Seeding Offer 1 of User 3... "

project = Project.create!(
  title: "Maison Gregoire, Bulles",
  description: "Une architecture maison moderne en pierre, verre, métal et bois. Les trois matériaux tendance, la pierre, le verre et le métal sont parfois combinés tous dans un seul et même projet. C’est justement l’approche qui a été suivie dans ce projet de maison d’architecte moderne par Bone Structure.",
  detail: "Pour adoucir l’aspect de ces trois matériaux froids, les architectes ont eu l’idée d’ajouter une touche de bois à la façade de cette résidence. Le résultat : une belle demeure design moderne ",
  owner: "Dogniat",
  main_contractor: "Rognar Sarl",
  year_completion: "2015",
  duration: 8,
  budget: 150000,
  labor_force: 10,
  latitude: 46.62714499281634,
  longitude: 7.0460816283844,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 2 OF USER 3-------------------
print "Seeding Offer 2 of User 3..."

project = Project.create!(
  title: "Aéro Firtness, Payerne",
  description: "Notre travail a été motivé par l’intention de donner une identité forte à la salle multi-activités de Mouvaux.
  Notre réflexion a été nourrie par l’envie de partager ces lieux de pratique des sports avec tous les publics, à
  l’intérieur comme à l’extérieur du bâtiment. Le club house a donc une position centrale, à la croisée des différentes
  salles et  de grandes baies vitrées qui s’ouvrent sur la grande salle et les gradins. A l’extérieur, la salle s’ouvre
  au rez-de-jardin le long d’un chemin piéton planté qui traverse le site ; les piétons découvrent la pratique de sports
  comme le futsal, le volley, le basket ou le roller tandis que les sportifs bénéficient d’une vue agréable sur le parc.",
  detail: "La salle multi-activités se dévoile par les divers volumes qui s’imbriquent tout en matérialisant chacun une
  fonction spécifique : le volume sur le parvis de la nouvelle place exprime la salle de gymnastique, surplombé par un
  second volume habité par la salle de danse. Sur l’arrière et offrant une façade sur l’autre partie de la ville, le
  troisième volume renferme la partie la plus imposante du programme : la grande salle multisports. Une expression
  volumétrique forte révélée par un traitement subtil des façades
  Les façades jouent de ce jeu volumétrique et le renforcent. Chacune vise à exprimer une identité propre par la manière
   dont sont mis en œuvre les matériaux et la façon dont elle dialogue avec l’extérieur.
  La salle de danse s’habille d’un moucharabieh de briques, laissant subtilement transparaitre sur la place les
  mouvements de l’intérieur et créant, à l’intérieur de la salle, un filtre lumineux tamisé et intime.
  Le volume de gymnastique, qui coiffe celui dédié à la danse, est revêtu d’un manteau de briques mises en œuvre de
  manière à accrocher la lumière et à inviter le passant à lever les yeux. Ce volume largement fermé est percé d’ouvertures
  franches et ciblées, créant ainsi un rapport dynamique privilégié avec les diverses ambiances présentes dans le
  contexte urbain dans lequel s’implante la salle de sport.
  Le troisième volume, à l’arrière, est matérialisé par une large façade vitrée au niveau du rez-de-jardin et surmonté
  d’un grand volume en verre armé profilé (réglit), offrant un double dialogue. De l’intérieur, le filtre créé par le
  verre offre un jeu d’ombres intéressant avec les arbres alentour et la vie de la ville. De l’extérieur, ce verre
  opalescent laisse apparaître la vie de la salle par la lumière qui peut transpercer les parois translucides.
  La partie en vitrage clair au rez-de-chaussée permet aux passants de prendre place dans des gradins dans le jardin,
  intégrés à la végétation.
  Entre ces volumes imbriqués se dessine un espace en prolongement de l’espace public. Il s’agit des espaces habités par
   les usagers de la salle et les spectateurs. C’est l’espace public intérieur. Il rassemble les circulations, distribue
    l’ensemble du programme et abrite les lieux de convivialité du complexe multisport.
  La variation de matérialités dans ce projet révèle l’importance du jeu des échelles et marque un changement de rythme
  et un séquençage du programme. ",
  owner: "Master Gerancia",
  main_contractor: "GHH inc",
  year_completion: "2000",
  duration: 16,
  budget: 5000000,
  labor_force: 25,
  latitude: 46.82123653311339,
  longitude: 6.938651561721599,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 3 OF USER 3-------------------
print "Seeding Offer 3 of User 3..."

project = Project.create!(
  title: "Maison familiale, Zurich",
  description: "Projet d’extension et de rénovation d’une maison individuelle en région Zurichoise.",
  detail: "Le volume de la maison a été redessiné dans le souci d’intégrer le projet au tissu urbain tout en lui donnant
  un aspect visuellement plus moderne. Le raccord avec le mur pignon mitoyen du terrain voisin qui, au départ, pouvait
  sembler être une gageure, donne ici lieu à une création aussi séduisante qu’originale, mêlant construction ancienne et
  moderne. Le traitement des façades de la nouvelle maison est simple et élégant et vient s’intégrer en douceur dans son
  environnement bâti avec l’utilisation de revêtements aux teintes douces, alternant enduit de ton clair et parement en
  pierre.",
  owner: "Max La menace",
  main_contractor: "Max la menace",
  year_completion: "2021",
  duration:3,
  budget: 800000,
  labor_force: 5,
  latitude: 47.33692740759875,
  longitude: 8.527602248958942,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 4 OF USER 3-------------------
print "Seeding Offer 4 of User 3..."

project = Project.create!(
  title: "Granges-Pacot Innovation Center",
  description: "Réalisé en association avec l'agence Celnikier et Grabli Architectes, ce projet est majeur pour le site
  sur lequel nous devions l’intégrer : la rue qui l’accueille, le parc et les jardins qui l’entourent.
  Il fallait l’y poser, jouer des alignements et profiter des vues. La rue y garde sa substance et les jardins
  l’entrouvrent, offrant un paysage capricieux et dansant. Nous nous sommes inscrits dans cet environnement fort d’un
  programme sensible : celui d’un lieu de soin, d’un espace qui doit être accueillant.",
  detail: "Il fallait que cette institution dispose d’une certaine légèreté, d’où le traitement des horizontales où
  seuls, trois matériaux sont employés : la nacre composée de minces lits de terre-cuite, le bronze des menuiseries et
   du bardage strié tel une lyre, et le verre du rez-de-chaussée qui laisse entrevoir le parc. Les passants y liront,
    pour certain un papillon, pour d’autres un drapé.  Le nouvel ensemble inséré dans les arbres dialogue de manière
    harmonieuse avec son environnement : la topographie, la course du soleil… Il profite de ces éléments et de ces
    rythmes naturels pour former une unité et s’affirme ainsi comme un espace privilégié, protecteur, confortable et
    accueillant, où chacun bénéficie d’une attention de qualité.",
  owner: "GHH gérance",
  main_contractor: "Barbezat ingénieurs",
  year_completion: "2010",
  duration: 26,
  budget: 10000000,
  labor_force: 30,
  latitude: 46.82515890946948,
  longitude: 7.141974851061377,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)

puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 5 OF USER 3-------------------
print "Seeding Offer 5 of User 3..."

project = Project.create!(
  title: "Maison individuelle du Futur, Annecy",
  description: "Construction ossature bois norme BBC Située sur un terrain en pente vers le nord avec vue sur le Lac
  d'Annecy et terrasse à l'Ouest Surface 170m².",
  detail: "Demande du Maître d'ouvrage: construction neuve unique, à l’esthétisme recherché -sans pour autant sans
  trahir son environnement-, privilégiant les volumes et les matériaux nobles; une « construction rare et précieuse ».
  Résultat: SAPHIR Prise de risque technique, recours récurrents à l'ingénierie structurelle (notamment pour la mise en
  place de la cheminée pesant 800kg et de l'escalier, fait sur mesure). Recherche esthétique dans la forme du bâtiment
  (ciselé comme un diamant), dans le mélange des matériaux (bois/verre/métal), dans le travail des proportions et de l'
  aménagement intérieur,...",
  owner: "Mr. Pidou Perdiat",
  main_contractor: "Concept Construction",
  year_completion: "2014",
  duration: 6,
  budget: 3000000,
  labor_force: 16,
  latitude: 45.896825996942965,
  longitude: 6.132277546049977,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)

puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 6 OF USER 3-------------------
print "Seeding Offer 6 of User 3..."

project = Project.create!(
  title: "The Hammock Retreat, Zermatt",
  description: "Accroché à la pente au-dessus du centre du village de Zermatt, exposé à l'ouest, chaque chalet totalise
  200 m² sur trois niveaux, avec ascenseur individuel. ",
  detail: "De grandes baies vitrées de 7m de large s'ouvrent sur la vallée. Le paysage est cadré à l'ouest à la manière
  d'une Marie-Louise pour un tableau. La façade sud est parcourues de coursives dont les gardes-corps jouent entre lignes
  verticales et horizontales, entre main-courante et bris soleil. La structure métallique, extérieure au volume, supporte
  planchers et toit. Ce dernier est simplement fermé par un clautra en bois, à la manière des granges traditionnelles.
  Le revêtement de façade est en Mélèze dans les étages. Le rez-de-chaussée est revêtue de pierre pour constituer un socle minéral.",
  owner: "Alias Resorts",
  main_contractor: "ZeBuilders",
  year_completion: "2022",
  duration: 20,
  budget: 8500000,
  labor_force: 25,
  latitude: 46.02013459693927,
  longitude: 7.744136495360522,
  user: user
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"
#------------------------------------------------------------------------------
