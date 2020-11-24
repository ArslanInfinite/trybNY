# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Activity.destroy_all
Review.destroy_all
User.destroy_all

User.create(username: "arslan", password: "arslan", balance: 1000000000, admin: true)

Activity.create!(title: "Rumble Boxing", description: "An all-level, 45-minute boxing and strength training workout. 10 rounds, 2 fists, 0 experience necessary.", location: "1495 3rd Avenue, New York, NY, 10028", capacity: 30, price: 60, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "UFC - Park Slope", description: "Looking to get in shape, lose weight, gain muscle, learn self defense, or compete in a Brazilian Jiu-Jitsu tournament? We have some of the best coaches in the industry to help reach your goals. We offer BJJ, MMA, boxing, and kickboxing classes.", location: "340 4th Ave, 2nd Floor, Brooklyn, NY, 11215", capacity: 20, price: 60, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "Vera Yoga", description: "A hot, vinyasa yoga studio teaches alignment-informed, athletic, vinyasa sequencing in a mood-lit, heated room.  Learn the shapes with options to decide what works for your unique body.  After building sequences together, the music goes up, the teacher fades out, and you get to explore each flow at your own pace. It’s a moving meditation lead by your breath and the beat. Each class ends with a delivery of their signature, essential oil, ice cold face towels. Their facility includes spa-like rainfall showers, botanical bath products and all the amenities you may need, including professional hair styling tools.", location: "406 Broadway, New York, NY, 10013", capacity: 20, price: 30, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "CONBODY", description: "A fitness bootcamp that hires formerly incarcerated individuals to teach fitness classes. Developed by former inmate Coss Marte, it is the ultimate no-equipment, hardcore workout program. Our mission is to bridge a gap between two communities: young professionals and formerly incarcerated individuals.", location: "131 Forsyth St, New York, NY, 10002", capacity: 30, price: 20, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "Mile High Run Club", description: "All running classes include a variety of speed, tempo, or hills and are designed for all fitness levels.", location: "24 W 25th St, New York, NY, 10010", capacity: 30, price: 25, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "The Metropolitan Museum of Art", description: "One of the world's largest and finest art museums. Its collections include more than two million works of art spanning 5000 years of world culture, from prehistory to the present, and from every part of the globe.", location: "1000 5th Ave, New York, NY 10028", capacity: 5000, price: 25, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "Catacombs by Candlelight", description: "Perfect for history lovers, this tour of the historical Basilica of St. Patrick’s Old Cathedral invites you into the catacombs, allowing you to see its pipe organ and venture to parts of the building with a personal encounter with this New York landmark.", location: "Bronx", capacity: 15, price: 40, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "Time Out Market", description: "All our favorite restaurants under one roof including fried chicken from Jacob’s Pickles, Japanese comfort food from Bessou, inventive ice cream flavors from Ice & Vice and more amazing eateries. Chow down over two floors with views of the East River, Brooklyn Bridge and Manhattan skyline. ", location: "Hudson", capacity: 250, price: 10, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)

Activity.create!(title: "LuminoCity Festival", description: "A 45 minute walking, narrative journey, with twinkling and towering LED sculptures along the way. Think fairy palaces, alluring lollipop trees, and mystical mushrooms. You'll cross multiple lands with their own sets. This year's sets include Mysterious Forest, Dangerous Dunes, Forgotten Ruins, Hidden Land of Hria, and Mystical Moon Land.", location: "10 Central Rd, New York, NY 10035", capacity: 100, price: 40, start_at: 10.seconds.from_now, end_at: 25.seconds.from_now, user_id: 1)