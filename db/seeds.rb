# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création des cerveaux (brains)
Brain.create(
  speciality: 'Physique théorique',
  address: '123 Main St',
  photo: 'brain1.jpg',
  title: 'Albert Einstein',
  description: "Albert Einstein était un physicien théoricien dont la théorie de la relativité a transformé notre compréhension de l'espace, du temps et de la gravité, tout en lui valant le prix Nobel de physique en 1921. Ses contributions ont également été cruciales pour le développement de la physique quantique et la compréhension des phénomènes atomiques.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Albert_Einstein',
  price: 100,
  owner_id: 1
)

Brain.create(
  speciality: 'Physique nucléaire',
  address: '456 Elm St',
  photo: 'brain2.jpg',
  title: 'Marie Curie',
  description: "Marie Curie, pionnière de la recherche sur la radioactivité, fut la seule personne à avoir obtenu des prix Nobel dans deux domaines scientifiques distincts. Son travail révolutionnaire a ouvert la voie à des avancées majeures en physique et en chimie.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Marie_Curie',
  price: 150,
  owner_id: 1
)

Brain.create(
  speciality: 'Energie électrique',
  address: '789 Oak St',
  photo: 'brain3.jpg',
  title: 'Nikola Tesla',
  description: "Nikola Tesla était un inventeur prolifique et visionnaire, connu pour ses contributions majeures au développement de la technologie électrique, notamment l'invention du courant alternatif (AC) et de la bobine Tesla. Son travail révolutionnaire dans le domaine de l'électromagnétisme a jeté les bases de nombreuses avancées technologiques modernes.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Nikola_Tesla',
  price: 120,
  owner_id: 2
)

Brain.create(
  speciality: 'Informatique',
  address: '101 Pine St',
  photo: 'brain4.jpg',
  title: 'Ada Lovelace',
  description: "Ada Lovelace, souvent considérée comme la première programmeuse au monde, a développé des algorithmes pour être exécutés par la machine analytique de Charles Babbage, préfigurant ainsi le concept de programmation informatique. Son travail novateur dans le domaine de l'informatique et son engagement envers la pensée analytique ont jeté les bases de l'ère numérique moderne',
  wiki_page: 'https://fr.wikipedia.org/wiki/Ada_Lovelace",
  price: 90,
  owner_id: 3
)

Brain.create(
  speciality: 'Mathematiques',
  address: '222 Maple St',
  photo: 'brain5.jpg',
  title: 'Katherine Johnson',
  description: "Katherine Johnson était une mathématicienne et physicienne dont les calculs précis ont été essentiels pour le succès des premières missions spatiales américaines, notamment le vol de John Glenn en orbite terrestre. Son travail à la NASA a contribué de manière significative à l'avancement de l'exploration spatiale et à la reconnaissance des contributions des femmes afro-américaines dans les sciences.",
  wiki_page: 'https://fr.wikipedia.org/wiki/Katherine_Johnson',
  price: 110,
  owner_id: 3
)
# Création des users
User.create(name: 'John Doe', email: 'john@test.com', password: '123456', description: "Salut je m'appelle John Doe")

User.create(name: 'Jane Doe', email: 'jane@test.com', password: '123456', description: "Salut je m'appelle Jan Doe")

User.create(name: 'Me Nala', email: 'martine@test.com', password: '123456', description: "Salut je m'appelle Me Nala")

# Création des réservations
Reservation.create(
  brain_id: 1,
  user_id: 2,
  cost: 100,
  start_date: Date.today,
  end_date: Date.today,
  status: true
)

Reservation.create(
  brain_id: 2,
  user_id: 1,
  cost: 450,
  start_date: Date.today,
  end_date: Date.today + 2.days,
  status: true
)
