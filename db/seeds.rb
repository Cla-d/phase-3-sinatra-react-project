puts "🌱 Seeding spices..."

# Seed your database here
50.times do
    User.create({username: Faker::Name.first_name, password: Faker::Name.last_name})
end

Task.create({name: "Shopping", status:"Complete", description: "easy", duedate:12032021, user_id:User.all.sample.id,})
Task.create({name: "Read", status:"Complete", description: "intermediate", duedate:15032021, user_id:User.all.sample.id, })
Task.create({name: "Hiking", status:"Incomplete", description: "difficult", duedate:17032021,  user_id:User.all.sample.id})
Task.create({name: "Yoga", status:"Complete", description: "intermediate", duedate:20032021, user_id:User.all.sample.id})
Task.create({name: "Watch movie", status:"Complete", description: "easy", duedate:21032021, user_id:User.all.sample.id})

puts "✅ Done seeding!"
