require "open-uri"

Booking.destroy_all
Experience.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Elsa", last_name: "sanche", email: "c@a.aaa", password: "password")
user2 = User.create!(first_name: "Juanita", last_name: "doe", email: "d@a.aaa", password: "password")

file1 = URI.open('https://images.unsplash.com/photo-1523287281576-5b596107a6ae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
exp1 = Experience.new(
title: "Snowed mountains hiking",
description: "Hiking in the winter is a great way to stay active and healthy during the darker months when you might feel inclined to hunker down in front of the tv.",
location: "Carrer del Pic de Peguera, Girona, Catalunya, Spain",
price: 79,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "169 - Avda. Litoral 40, Avinguda del Litoral, la Vila Olímpica del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "No pets. No parties or events. Stick to the group. No smoking",
 activity_effort: 3,
 user: user1
)
exp1.photo.attach(io: file1, filename: 'snowed_mountains.jpeg', content_type: 'image/jpeg')
exp1.save!

file2 = URI.open('https://res.cloudinary.com/geuxor/image/upload/v1615547052/dolphin_qjuxf2.jpg')
exp2 = Experience.new(
title: "Cute dolphins observation",
description: "One fin, then two, then three… What a delight to see the bottlenose dolphins gliding through the Breton water!",
location: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
price: 120,
activity: "Nature",
max_guests: 4,
meeting_point: "Passeig de Garcia Fària, Diagonal Mar i el Front Marítim del Poblenou, Sant Martí, Barcelona, Barcelonés, Barcelona, Cataluña, 08001, España",
 policies: "No pets. No parties or events. Stick to the group. No smoking",
activity_effort: 3,
user: user2
)
exp2.photo.attach(io: file2, filename: 'dolphins.jpeg', content_type: 'image/jpeg')
exp2.save!

file3 = URI.open('https://res.cloudinary.com/geuxor/image/upload/v1615547052/dolphin_qjuxf2.jpg')
exp3 = Experience.new(
title: "Waterfall Jumping",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
price: 69,
 activity: "Wild",
 max_guests: 4,
 meeting_point: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
 policies: "No pets. No parties or events. Stick to the group. No smoking",
 activity_effort: 3,
 user: user1
)
exp3.photo.attach(io: file3, filename: 'dolphins.jpeg', content_type: 'image/jpeg')
exp3.save!

file4 = URI.open('https://images.unsplash.com/photo-1523287281576-5b596107a6ae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')
exp4 = Experience.new(
title: "Massage and Waterfall",
description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
location: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
price: 69,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Carretera d'Horta a Cerdanyola, Can Valldaura, Cerdanyola del Vallés, Vallés Occidental, Barcelona, Cataluña, 08193, España",
 policies: "No pets. No parties or events. Stick to the group. No smoking",
 activity_effort: 3,
 user: user1
)
exp4.photo.attach(io: file4, filename: 'waterfall.jpeg', content_type: 'image/jpeg')
exp4.save!

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
