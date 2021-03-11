require "open-uri"

Booking.destroy_all
Experience.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Elsa", last_name: "sanche", email: "c@a.aaa", password: "password")
user2 = User.create!(first_name: "Juanita", last_name: "doe", email: "d@a.aaa", password: "password")

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
title: "Kayak Creeking",
description: "Creeking is one of the most dangerous sports there is, but of course this also makes it one of the most exhilarating. It is similar to canoeing and kayaking, but Creeking involves descending steep low-volume white-water that includes waterfalls, slides and unexplored canyons. This means that it has to be performed in specially made canoes and extra gear is needed to ensure that people are kept as safe as possible. There are all kinds of unique hazards attached to Creeking, including sieves (where the paddler gets stuck underwater), chicken heads (rock sticking out of slides) and of course waterfalls where the landing is key. This is certainly not one for the faint of heart.",
location: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 120,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
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
 user: user2
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
title: "Zorbing hills",
description: "Zorbing has taken the world by storm in recent years, and this is for a good reason as it looks like fantastic fun and is also rather hilarious to watch. The sport was born in New Zealand (like many extreme sports and activities) and involves climbing inside a large inflatable orb where you are then sent hurling down a hillside until you stop (usually about half a mile). The orb is double layered, meaning that there is an air layer in between two inflatable orbs (this acts as a shock absorber and ensures that it is safe). If you are looking for a sport that will leave you dizzy, disorientated, full of adrenaline and in hysterics, then this is the one for you.",
location: "Sarrià, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Sport",
 max_guests: 4,
 meeting_point: "Sarrià, Sarrià - Sant Gervasi, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp6.photo.attach(io: file6, filename: 'autumn_forest.jpeg', content_type: 'image/jpeg')
exp6.save!

#### FOOD
file11 = URI.open('https://images.pexels.com/photos/793759/pexels-photo-793759.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp11 = Experience.new(
title: "Air Kicking",
description: "Air Kicking is certainly an entertaining extreme sport, and it is also one that a lot of people would like to try (unlike most of the entries on this list). Air Kicking is essentially being catapulted through the air into a swimming pool or foam pit, and although it is safe you can be sure that it will get your adrenaline pumping. You are shot into the sky through the air in a pre-calculated parabolic trajectory which uses air pressure and water recoil technology. Around 60 liters of water are forced through a nozzle under the seat, which will fire participants around 26 feet into the air before crashing down into the water. It looks great fun, and it is also quite the spectacle to watch too.",
location: "Carrer d'Aragó, la Dreta de l'Eixample, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 19,
 activity: "Sport",
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
title: "Limbo Skating",
description: "Limbo Skating involves using roller skates to limbo under objects, and many people have found a way to move under objects just inches off of the ground. Watching someone limbo under a bar just a few inches off the ground is incredible enough, but to do this on skates is even more impressive as they have to spread their legs apart and retain their balance. A 6-year-old from India, Gagan Satish, broke the world record in 2014 by limbo skating under 39 cars that were parked just five inches off the ground. The feat took him just 29 seconds to cover around 230 feet, and the video is truly an amazing watch. Although not as extreme as some of the other entries, limbo skating certainly carries risk and is a strange yet entertaining sport.",
location: "Avinguda de Madrid, les Corts, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 120,
 activity: "Sport",
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
title: "Crocodile Bungee",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "el Poble-sec, Font Trobada, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 69,
 activity: "Sport",
 max_guests: 4,
 meeting_point: "el Poble-sec, Font Trobada, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp13.photo.attach(io: file13, filename: 'dish.jpeg', content_type: 'image/jpeg')
exp13.save!

file14 = URI.open('https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp14 = Experience.new(
title: "Mountain Unicycling",
description: "Mountain biking is an extreme, dangerous and exhilarating sport, but not enough for some people. Some extreme sports enthusiasts find that two wheels is not extreme enough, so they have instead opted to ride a unicycle down mountains and rough terrains. Most people struggle to ride a unicycle, so the idea of traversing a mountain side on one seems a step too far, and it is a particularly difficult extreme sport to get to grips with. It is of course hugely impressive though, and although you may not reach the same speeds as mountain biking it takes a lot of guts, determination and skill to conquer a mountain on just one wheel",
location: "Gran Via de les Corts Catalanes, Hostafrancs, Sants-Montjuïc, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 50,
 activity: "Sport",
 max_guests: 4,
 meeting_point: "Gran Via de les Corts Catalanes, Hostafrancs, Sants-Montjuïc, Eixample, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp14.photo.attach(io: file14, filename: 'spaghetti.jpeg', content_type: 'image/jpeg')
exp14.save!

file15 = URI.open('https://images.pexels.com/photos/3370704/pexels-photo-3370704.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp15 = Experience.new(
title: "Make cookies for fun!",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Vies 9 i 10, Carrer del Rector Triadó, Hostafrancs, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 35,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Vies 9 i 10, Carrer del Rector Triadó, Hostafrancs, Sants-Montjuïc, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp15.photo.attach(io: file15, filename: 'cookies', content_type: 'image/jpeg')
exp15.save!

file16 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp16 = Experience.new(
title: "Indian cuisine masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp16.photo.attach(io: file16, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp16.save!

file17 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp17 = Experience.new(
title: "Indian cuisine masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp17.photo.attach(io: file17, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp17.save!

file18 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp18 = Experience.new(
title: "Indian cuisine masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp18.photo.attach(io: file18, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp18.save!

file19 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp19 = Experience.new(
title: "Indian cuisine masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp19.photo.attach(io: file19, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp19.save!

file20 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp20 = Experience.new(
title: "Bull Fighting",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Pamplona, Navarra - Nafarroa, Spain",
price: 49,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Pamplona, Navarra - Nafarroa, Spain",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp20.photo.attach(io: file20, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp20.save!

file21 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp21 = Experience.new(
title: "French Mountain Drinking",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "20 Rue de la Société Vinicole, 16100 Cognac, France",
price: 49,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "20 Rue de la Société Vinicole, 16100 Cognac, France",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp21.photo.attach(io: file21, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp21.save!

file22 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp22 = Experience.new(
title: "Run from the Catalan Tigers",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "31680 Larrau, France",
price: 49,
 activity: "Sport",
 max_guests: 4,
 meeting_point: "31680 Larrau, France",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp22.photo.attach(io: file22, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp22.save!

file23 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp23 = Experience.new(
title: "Marmot masterclass",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp23.photo.attach(io: file23, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp23.save!

file24 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp24 = Experience.new(
title: "Indian rat hunting",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Headland Sada, Vasco da Gama, Goa 403804, India",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Headland Sada, Vasco da Gama, Goa 403804, India",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp24.photo.attach(io: file24, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp24.save!

file25 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp25 = Experience.new(
title: "Fighting with Whale Sharks",
description: "Fight the largest fish in the world as you swim with whale sharks near Isla Mujeres, Mexico. Feel dwarfed by these gentle giants, which can grow over 40 feet (12 m) long. No need to dive deep for a good view since whale sharks filter feed on plankton and small fish near the surface of the water. You may see them accompanied by remoras hitching a ride or manta rays sharing the plankton buffet. Even better, a portion of the proceeds from of your whale shark swim goes to support the conservation efforts of The Whale Shark Project to protect these magnificent sea creatures.",
location: "Isla Mujeres, Quintana Roo, Mexico",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Isla Mujeres, Quintana Roo, Mexico",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp25.photo.attach(io: file25, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp25.save!

file26 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp26 = Experience.new(
title: "Swimming with Sharks Without a Cage",
description: "Cue the Jaws theme as you sit on the edge of a boat waiting for the sharks to arrive. Soon enough, you see the dark shadows approach and your heart starts to race. Are you crazy enough to jump into the water mere inches from hundreds of razor-sharp teeth? There’s only one way to find out.",
location: "Oahu Avenue, Honolulu, Hawaii, United States of America",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Oahu Avenue, Honolulu, Hawaii, United States of America",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp26.photo.attach(io: file26, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp26.save!

file27 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp27 = Experience.new(
title: "Flying with Swans",
description: "Follow conservationist and adventurer Sacha Dench who will take you to the air above the Russian tundra in her paramotor at the start of her 4,500 mile journey following the migration of endangered Bewick’s swans. A light tailwind gives you ideal conditions to start a  journey to fly accross Europe.",
location: "Moscow, Москва, Russia",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Moscow Airport, Москва, Russia",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp27.photo.attach(io: file27, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp27.save!

file28 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp28 = Experience.new(
title: "Wild Animal Chasing",
description: "A wild animal is an animal that is, well, wild. This means that it isn't tame and it lives on its own without any help from people. A wild animal finds its own food, shelter, water and all its other needs in a specific natural habitat. ... Wild animals make their home in both the city and the country.",
location: "Savana, Vatovavy Fitovinany, Madagascar",
price: 49,
 activity: "Animals",
 max_guests: 4,
 meeting_point: "Savana, Vatovavy Fitovinany, Madagascar",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp28.photo.attach(io: file28, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp28.save!

file29 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp29 = Experience.new(
title: "Wing Walking",
description: "There are few experiences which would be as adrenaline pumping and as extreme as walking on the wings of a plane mid-flight, and this has developed into a popular extreme sport/activity called wing walking. Typically, the individual will be strapped to the top wing of a vintage biplane where you will then be swept through the skies at speeds of up to 135 mph and you will often have a pilot that will perform a range of acrobatic manoeuvres too. This is not a particularly dangerous extreme sport as you are strapped to the plane, but you can be sure that it is the ultimate thrill ride and something that will have your heart in your mouth throughout.",
location: "Ashford, England, United Kingdom",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "Shenley Rd, Ashford TN27 9JD, United Kingdom",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp29.photo.attach(io: file29, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp29.save!

file30 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp30 = Experience.new(
title: "Volcano Boarding",
description: "Hurtling down an active volcano on a thin piece of board or metal may sound like something out of a James Bond film, but it has in fact become a hugely popular extreme sport and is practiced by many. The sport is most popular on Nicaragua’s Cerro Negro, and this sees participants travelling down from 726 metres and reaching astonishing speeds of up to 50 mph. Like most extreme sports, safety gear is very important and ensures that injuries are often just scratches and bruises. Then again, there is the threat of an eruption and having molten lava flowing down the volcano which not even 007 could evade.",
location: "Volcano Village, Hawaii, United States of America",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "Volcano Village, Hawaii, United States of America",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp30.photo.attach(io: file30, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp30.save!

file31 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp31 = Experience.new(
title: "Cliff Diving",
description: "As the name implies, this crazy extreme sport involves throwing yourself off of cliffs from a great height into the sea below. There are many great benefits to this extreme sport, such as seeing some stunning sights in beautiful areas of the world, free-falling through the air will give you a huge adrenaline rush, you will feel at one with nature and there is no special clothing/equipment to buy. It is of course highly dangerous though and can put great strain on your body. The impact when you hit the water can be enough to break bones or compress your spine, but there are then rocks, branches and fish to consider when landing which can cause fatalities. You must always enter the water feet-first in a vertical line to break through the water easier, and any other landing will always result in injury or even death.",
location: "Furore, Campania, Italy",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "40°36'49.3N - 14°33'14.1E",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp31.photo.attach(io: file31, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp31.save!

file32 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp32 = Experience.new(
title: "Ropeless High Lining",
description: "Slack lining could be described as urban tightrope walking. Whilst some people will practice this with the line a few feet off the ground, there are also those extreme characters that take things to the next level by slack lining across cliff tops and other dangerous areas (this is called high lining). The person walking the rope will usually have a harness attached to the rope itself, but this does not guarantee safety as if you were to fall near the start or towards the end you could swing into the cliff side and if you fall in the middle could cause the rope to fail. High lining provides an incredible thrill however which is what makes it so popular, and in addition to this it ensures for some stunning views which nobody may have seen before.",
location: "Oliana, Catalunya, Spain",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "Passeig de Colom, Gothic Quarter, Ciutat Vella, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user1
)
exp32.photo.attach(io: file32, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp32.save!

file33 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp33 = Experience.new(
title: "Wingsuit Flying",
description: "At one point or another, everyone has imagined what it would be like to soar through the sky. With wingsuit flying you can discover this feeling, and the extreme sport is a combination of diving and hang gliding where the individual dons a wingsuit, which looks very much like a flying squirrel. This suit adds a large amount of surface area to the body, so that when you jump from a high altitude and spread your arms and legs you get an increase in lift which allows you to fly. A parachute is then required to land much like sky diving. There are many risks attached to wingsuit flying, but it is also the closest that you will come to flying through the air like a superhero, or at least like a flying squirrel.",
location: "Cerro de los Muertos, Veracruz, Mexico",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "Cerro de los Muertos, Veracruz, Mexico",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp33.photo.attach(io: file33, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp33.save!

file34 = URI.open('https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
exp34 = Experience.new(
title: "Train Surfing",
description: "The creator of Train Surfing has clearly seen one too many action films, and this is a sport which is also illegal around the world. Train Surfing involves climbing onto the roof of a train and “surfing” it as it moves at great speeds, and needless to say it is incredibly dangerous. Train Surfing is a huge problem is South Africa and many people have been killed attempting it. It was popular in the 80s and 90s, and once again resurfaced in 2005 after someone only known as “The Trainrider” surfed atop the InterCityExpress, the fastest train in Germany. A few years later, 40 German teenagers died attempting this wild and dangerous activity/sport which is perhaps one step too far.",
location: "A.F. Kriegers Vej, Copenhagen, Region Hovedstaden, Denmark",
price: 49,
 activity: "Danger",
 max_guests: 4,
 meeting_point: "A.F. Kriegers Vej 23, Copenhagen, Region Hovedstaden, Denmark",
 policies: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
 activity_effort: 3,
 user: user2
)
exp34.photo.attach(io: file34, filename: 'indian_cuisine.jpeg', content_type: 'image/jpeg')
exp34.save!

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
