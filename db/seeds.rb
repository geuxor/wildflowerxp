require "open-uri"

Booking.destroy_all
Experience.destroy_all
User.destroy_all

user1 = User.create!(first_name: "pepe", last_name: "sanche", email: "a@a.aaa", password: "password")
user2 = User.create!(first_name: "john", last_name: "doe", email: "b@a.aaa", password: "password")

# NATURE
file1 = URI.open('https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp1 = Experience.new(
title: "Snowed mountains hiking",
description: "Hiking in the winter is a great way to stay active and healthy during the darker months when you might feel inclined to hunker down in front of the tv.",
location: "169 - Avda. Litoral 40, Avinguda del Litoral, la Vila Olímpica del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 79,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "169 - Avda. Litoral 40, Avinguda del Litoral, la Vila Olímpica del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Please don't feed wild animals and lead your way alone. Stick to the group.",
 activity_effort: 3,
 user: user1
)
exp1.photo.attach(io: file1, filename: 'snowed_mountains.jpeg', content_type: 'image/jpeg')
exp1.save!

file2 = URI.open('https://images.pexels.com/photos/2922672/pexels-photo-2922672.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp2 = Experience.new(
title: "Cute dolphins observation",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 120,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp2.photo.attach(io: file2, filename: 'dolphins.jpeg', content_type: 'image/jpeg')
exp2.save!

file3 = URI.open('https://images.pexels.com/photos/2387873/pexels-photo-2387873.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp3 = Experience.new(
title: "Magnificient waterfall",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
price: 69,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp3.photo.attach(io: file3, filename: 'waterfall.jpeg', content_type: 'image/jpeg')
exp3.save!

file4 = URI.open('https://images.pexels.com/photos/733475/pexels-photo-733475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp4 = Experience.new(
title: "Amazing night sky explained",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Carretera de Sant Cugat a Barcelona, Sol-i-Aire, Can Vasconcel, Sant Cugat del Vallès, Vallés Occidental, Barcelona, Cataluña, 08196, España",
price: 50,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Carretera de Sant Cugat a Barcelona, Sol-i-Aire, Can Vasconcel, Sant Cugat del Vallès, Vallés Occidental, Barcelona, Cataluña, 08196, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp4.photo.attach(io: file4, filename: 'nigth_sky.jpeg', content_type: 'image/jpeg')
exp4.save!

file5 = URI.open('https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp5 = Experience.new(
title: "Beautiful riverside walking",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Can Calopa de Dalt, Vallvidrera, el Tibidabo i les Planes, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 35,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Can Calopa de Dalt, Vallvidrera, el Tibidabo i les Planes, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp5.photo.attach(io: file5, filename: 'riverside.jpeg', content_type: 'image/jpeg')
exp5.save!

file6 = URI.open('https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp6 = Experience.new(
title: "Stunning forest in autumn",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Sarrià, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Sarrià, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp6.photo.attach(io: file6, filename: 'autumn_forest.jpeg', content_type: 'image/jpeg')
exp6.save!

#### FOOD
file11 = URI.open('https://images.pexels.com/photos/793759/pexels-photo-793759.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp11 = Experience.new(
title: "Healthy food concepts",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Carrer d'Aragó, la Dreta de l'Eixample, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 19,
 activity: "Food",
 max_guests: 4,
 meeting_point: "Carrer d'Aragó, la Dreta de l'Eixample, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp11.photo.attach(io: file11, filename: 'healthy_food.jpeg', content_type: 'image/jpeg')
exp11.save!

file12 = URI.open('https://images.pexels.com/photos/4259140/pexels-photo-4259140.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp12 = Experience.new(
title: "Family cooking class",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Avinguda de Madrid, les Corts, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 120,
 activity: "Food",
 max_guests: 4,
 meeting_point: "Avinguda de Madrid, les Corts, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp12.photo.attach(io: file12, filename: 'family_cooking.jpeg', content_type: 'image/jpeg')
exp12.save!

file13 = URI.open('https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp13 = Experience.new(
title: "Modern cuisine experience",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "el Poble-sec, Font Trobada, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 69,
 activity: "Food",
 max_guests: 4,
 meeting_point: "el Poble-sec, Font Trobada, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp13.photo.attach(io: file13, filename: 'dish.jpeg', content_type: 'image/jpeg')
exp13.save!

file14 = URI.open('https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp14 = Experience.new(
title: "Cook like an italian",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Gran Via de les Corts Catalanes, Hostafrancs, Sants-Montjuïc, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 50,
 activity: "Food",
 max_guests: 4,
 meeting_point: "Gran Via de les Corts Catalanes, Hostafrancs, Sants-Montjuïc, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp14.photo.attach(io: file14, filename: 'spaghetti.jpeg', content_type: 'image/jpeg')
exp14.save!

file15 = URI.open('https://images.pexels.com/photos/3370704/pexels-photo-3370704.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp15 = Experience.new(
title: "Make cookies for fun!",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Vies 9 i 10, Carrer del Rector Triadó, Hostafrancs, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 35,
 activity: "Food",
 max_guests: 4,
 meeting_point: "Vies 9 i 10, Carrer del Rector Triadó, Hostafrancs, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp15.photo.attach(io: file15, filename: 'cookies', content_type: 'image/jpeg')
exp15.save!

file16 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp16 = Experience.new(
title: "Indian cuisine masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Food",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp16.photo.attach(io: file16, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp16.save!



booking1 = Booking.create!(
 status: "pending",
 nr_of_people: 3,
 start_date: Date.today,
 end_date: Date.today + 1,
 user: user1,
 experience: exp1)

booking2 = Booking.create!(
 status: "accepted",
 nr_of_people: 3,
 start_date: Date.today,
 end_date: Date.today + 2,
 user: user2,
 experience: exp2)

puts "done"

