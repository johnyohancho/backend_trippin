# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Trip.destroy_all
Event.destroy_all


User.create(username: "yohan403", name: "John", email: "yohan403@gmail.com", password: "abc123")
Trip.create(name: "Trip to Atlanta")
Event.create(name: "Tour of High Museum")

# def get_data()
#     coordinates="25.761681,-80.191788" #(latitude,longitude)
#     query="music" #keyword
#     size="1"
#     consumer_key="9b7LFj2VHCQZkEt6UGKU0objuiK3Bzkl"
#     url = "https://app.ticketmaster.com/discovery/v2/suggest.json?size=#{size}&geoPoint=#{coordinates}&keyword=#{query}&apikey=#{consumer_key}"
#     response = RestClient.get(url)
#     JSON.parse(response.body)
# end

# puts get_data["_embedded"]["venues"]
# puts get_data["_embedded"]["attractions"]
# puts get_data["_embedded"]["events"]
# puts get_data["_embedded"]["products"]