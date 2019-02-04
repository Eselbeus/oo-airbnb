require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing0 = Listing.new("New York")
listing1 = Listing.new("Portland")
listing2 = Listing.new("Seattle")
listing3 = Listing.new("Boston")

guest1 = Guest.new("Seann")
guest2 = Guest.new("Doc")
guest3 = Guest.new("Joe")
guest4 = Guest.new("Jane")

trip0 = Trip.new(guest1, listing3, 8)
trip1 = Trip.new(guest1, listing1, 7)
trip2 = Trip.new(guest2, listing1, 5)
trip3 = Trip.new(guest3, listing2, 3)
trip4 = Trip.new(guest4, listing1, 3)
trip5 = Trip.new(guest4, listing0, 3)
trip6 = Trip.new(guest4, listing1, 3)
trip7 = Trip.new(guest2, listing0, 3)



# Put your variables here~!
binding.pry
0
