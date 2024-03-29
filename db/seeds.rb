# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
# Création des users
Reservation.destroy_all
Brain.destroy_all
User.destroy_all


user_1 = User.create(first_name: 'John', last_name: 'Doe', email: 'john@test.com', password: '123456')

user_2 = User.create(first_name: 'Jane', last_name: 'Doe', email: 'jane@test.com', password: '123456')

user_3 = User.create(first_name: 'Me', last_name: 'Nala', email: 'martine@test.com', password: '123456')


# Création des cerveaux (brains)
brain_1 = Brain.new(
  specialty: 'Physique théorique',
  address: '135-20 39th Ave, Queens, NY 11354, USA',
  title: 'Albert Einstein',
  description: "Albert Einstein était un physicien théoricien dont la théorie de la relativité a transformé notre compréhension de l'espace, du temps et de la gravité, tout en lui valant le prix Nobel de physique en 1921. Ses contributions ont également été cruciales pour le développement de la physique quantique et la compréhension des phénomènes atomiques.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Albert_Einstein',
  price: 100,
  user: user_1
)
brain_1.photo.attach(io: File.open("app/assets/images/brain1.jpg"), filename: "brain1.jpg")
brain_1.save!


brain_2 = Brain.new(
  specialty: 'Physique nucléaire',
  address: '5 Av. Anatole France, 75007 Paris, FRANCE',
  title: 'Marie Curie',
  description: "Marie Curie, pionnière de la recherche sur la radioactivité, fut la seule personne à avoir obtenu des prix Nobel dans deux domaines scientifiques distincts. Son travail révolutionnaire a ouvert la voie à des avancées majeures en physique et en chimie.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Marie_Curie',
  price: 150,
  user: user_1
)
brain_2.photo.attach(io: File.open("app/assets/images/brain2.jpg"), filename: "brain2.jpg")
brain_2.save!

brain_3 = Brain.new(
  specialty: 'Energie électrique',
  address: '120 Sockanosset Cross Rd, Cranston, RI 02920, USA',
  title: 'Nikola Tesla',
  description: "Nikola Tesla était un inventeur prolifique et visionnaire, connu pour ses contributions majeures au développement de la technologie électrique, notamment l'invention du courant alternatif (AC) et de la bobine Tesla. Son travail révolutionnaire dans le domaine de l'électromagnétisme a jeté les bases de nombreuses avancées technologiques modernes.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Nikola_Tesla',
  price: 120,
  user: user_2
)
brain_3.photo.attach(io: File.open("app/assets/images/brain3.jpg"), filename: "brain3.jpg")
brain_3.save!

brain_4 = Brain.new(
  specialty: 'Informatique',
  address: '1216 E Main St, Chattanooga, TN 37408, USA',
  title: 'Ada Lovelace',
  description: "Ada Lovelace, souvent considérée comme la première programmeuse au monde, a développé des algorithmes pour être exécutés par la machine analytique de Charles Babbage, préfigurant ainsi le concept de programmation informatique. Son travail novateur dans le domaine de l'informatique et son engagement envers la pensée analytique ont jeté les bases de l'ère numérique moderne',
  wiki_page: 'https://fr.wikipedia.org/wiki/Ada_Lovelace",
  price: 90,
  user: user_3
)
brain_4.photo.attach(io: File.open("app/assets/images/brain4.jpg"), filename: "brain4.jpg")
brain_4.save!

brain_5 = Brain.new(
  specialty: 'Mathematiques',
  address: '817 St James St, Winnipeg, MB R3G 3L3, CANADA',
  title: 'Katherine Johnson',
  description: "Katherine Johnson était une mathématicienne et physicienne dont les calculs précis ont été essentiels pour le succès des premières missions spatiales américaines, notamment le vol de John Glenn en orbite terrestre. Son travail à la NASA a contribué de manière significative à l'avancement de l'exploration spatiale et à la reconnaissance des contributions des femmes afro-américaines dans les sciences.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Katherine_Johnson',
  price: 110,
  user: user_3
)
brain_5.photo.attach(io: File.open("app/assets/images/brain5.jpg"), filename: "brain5.jpg")
brain_5.save!

brain_6 = Brain.new(
  specialty: 'informatique',
  address: '28 rue du Lavoir, 22650 Beaussais sur Mer, FRANCE',
  title: 'David Heinemeier Hansson',
  description: "David Heinemeier Hansson était un programmeur, il a développé le framework web Ruby on Rails. En 2005, il est récompensé hacker de l'année par Google et O'Reilly.",
  wiki_page: 'https://fr.wikipedia.org/wiki/David_Heinemeier_Hansson',
  price: 300,
  user: user_3
)
brain_6.photo.attach(io: File.open("app/assets/images/David_Heinemeier_Hansson.jpg"), filename: "David_Heinemeier_Hansson.jpg")
brain_6.save!

# Création des réservations
Reservation.create(
  brain: Brain.first,
  user: user_2,
  cost: 100,
  start_date: Date.today,
  end_date: Date.today,
  status: false
)

Reservation.create(
  brain: Brain.last,
  user: user_3,
  cost: 450,
  start_date: Date.today,
  end_date: Date.today + 2.days,
  status: false
  )
