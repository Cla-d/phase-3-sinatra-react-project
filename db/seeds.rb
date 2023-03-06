puts "🌱 Seeding spices..."

# Seed your database here
user1= User.create(name:"Daryl")
user2= User.create(name:"Joy")
user3= User.create(name:"Amy")
user4= User.create(name:"Maxwell")
user5= User.create(name:"Mumin")

Task.create(name:"Workout", user_id:3)
Task.create(name:"Read a novel", user_id:3)
Task.create(name:"Go jogging", user_id:2)
Task.create(name:"Meal prep", user_id:1)
Task.create(name:"Shopping", user_id:4)
Task.create(name:"Make a call", user_id:5)
Task.create(name:"Visit family", user_id:2)
Task.create(name:"Visit the museum", user_id:1)
Task.create(name:"Study", user_id:4)
Task.create(name:"Bike ride", user_id:5)


puts "✅ Done seeding!"
