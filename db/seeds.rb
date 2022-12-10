# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
   #movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Parcel.create([{weight: 3, pickup_time: 1300, recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Kiambu", received_by:"Jack"},
    {weight: 4, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Turkana", received_by:"Joe"},
    {weight: 5, pickup_time: 1300, recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Kisumu", received_by:"Jill"},
    {weight: 6, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Marsabit", received_by:"Justin"},
    {weight: 7, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Mombasa", received_by:"Jackie"},
    {weight: 8, pickup_time: 1300, recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Kilifi", received_by:"James"},
    {weight: 9, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Lamu", received_by:"Jason"},
    {weight: 13, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Kakamega", received_by:"Jane"},
    {weight: 12, pickup_time: 1300,  recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Busia", received_by:"Jeremy"},
    {weight: 30, pickup_time: 1300, recieved_at: 1200, description: "Lorem ipsum something something", pickup_address: "Nairobi",  present_location: "Embu", received_by:"Joyce"}])

# user = User.create(fullname: "alexmerced", telephone:"0334998777", email:"alaa@gamil.com", password:"test")