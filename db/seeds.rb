Booking.destroy_all
Experience.destroy_all
User.destroy_all

user1 = User.create!(first_name: "pepe", last_name: "sanche", email: "a@a.aaa", password: "password")
user2 = User.create!(first_name: "john", last_name: "doe", email: "b@a.aaa", password: "password")

exp1 = Experience.create!(
title: "hiking",
description: "description text here",
location: "Barcelona, Spain",
price: 123,
 activity: "Sport",
 max_guests: 4,
 meeting_point: "example",
 policies: "example",
 activity_effort: 3,
 user: user1
)

exp2 = Experience.create!(
title: "KayakingwithPoppy",
description: "KayakingwithPoppy1",
location: "Madrid",
price: 123,
 activity: "Nature",
 max_guests: 4,
 meeting_point: "Bcn port",
 policies: "free beers",
 activity_effort: 3,
 user: user2
)


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
