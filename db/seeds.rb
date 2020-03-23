# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#

user = User.create(name: 'admin', email: 'admin@example.com', card: 1030567890, phone: 3176473422)

movie = Movie.create(
    name: 'Inception',
    image: 'https://homepages.cae.wisc.edu/~ece533/images/airplane.png',
    date_start: '2020-03-03',
    date_end: '2020-03-10'
)

movie1 = Movie.create(
    name: 'Harry Potter',
    image: 'https://homepages.cae.wisc.edu/~ece533/images/boat.png',
    date_start: '2020-03-11',
    date_end: '2020-03-20'
)

booking = Booking.create(user_id: user.id, movie_id: movie.id)