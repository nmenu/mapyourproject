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
puts "Photo count: #{Photo.count}"
puts "Video count: #{Video.count}"
puts "Pdf count: #{Pdf.count}"
puts "Ifc count: #{IfcModel.count}"
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

Photo.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 2 OF USER 1-------------------
print "Seeding Offer 2 of User 1... "
project = Project.create!(
  title: "Glovelier ",
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 47.35065093320557,
  longitude: 7.194970804890431,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

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
  title: "Hopital d'Yverdon",
  description: "Rénovation de l'hopital",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 46.77862658517543,
  longitude: 6.6248638498262835,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

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
  io: File.open(Rails.root.join('app/assets/images/avatar.jpeg')),
  filename: 'avatar.jpeg',
  content_type: 'image/jpeg'
)

puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 1 OF USER 2-------------------
print "Seeding Offer 1 of User 2... "

project = Project.create!(
  title: "Duplex Les Roseaux",
  description: "Le projet du Taubenloch lot Nord a pour but d’assainir un tronçon de l’autoroute
  N16 d’une longueur d’environ 1 km. Ce lot s’inscrit dans le projet plus vaste
  d’assainissement de l’autoroute N16 reliant Boncourt à Bienne qui constitue le
  principal axe routier à travers le canton du Jura et le Jura Bernois.",
  detail: "Sur ce lot, les voies montantes et descendantes de ce tronçon empruntent successivement, pour chacune d’entre-elles, un tunnel spécifique et une succession de ponts ou de platesformes soutenues par des murs. Chaque voie dispose donc de ses propres ouvrages d’arts.
  La voie montante dispose en outre d’une bretelle d’accès grâce à un pont multi-poutresL’assainissement réalisés consiste à :
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

Photo.create!(
  title: "Taubenloch",
  description: "N16",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

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
puts "done!"

#----------------------------------------------------
#--------SEEDING OFFER 1 OF USER 3-------------------
print "Seeding Offer 1 of User 3... "

project = Project.create!(
  title: "Maison Gregoire, Bulles",
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 46.62714499281634,
  longitude: 7.0460816283844,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
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
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 46.82123653311339,
  longitude: 6.938651561721599,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
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
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 47.33692740759875,
  longitude: 8.527602248958942,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
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
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 46.82515890946948,
  longitude: 7.141974851061377,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
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
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 45.896825996942965,
  longitude: 6.132277546049977,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
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
  description: "",
  detail: "",
  owner: "",
  main_contractor: "",
  year_completion: "",
  duration: 1,
  budget: 1,
  labor_force: 1,
  latitude: 46.02013459693927,
  longitude: 7.744136495360522,
  user: user
)

Photo.create!(
  title: "Titre de la photo",
  description: "Description de la photo",
  url: "https://",
  project: project
)

Video.create!(
  title: "Titre de la video",
  description: "Description de la video",
  url: "https://",
  project: project
)

Pdf.create!(
  title: "Titre du PDF",
  description: "Description du Pdf",
  url: "https://",
  project: project
)

IfcModel.create!(
  title: "Titre de l'image",
  description: "Description de l'image",
  url: "https://",
  project: project
)

Category.create!(
  description: "Description de l'image",
  url: "https://",
  project: project
)
puts "done!"
#------------------------------------------------------------------------------
