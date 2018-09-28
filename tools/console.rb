require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Customers:
barney = Customer.new("Barney", "Loosemore")
ryan = Customer.new("Ryan", "Barker")
amalie = Customer.new("Amalie", "Smith")
# barney2 = Customer.new("Barney", "Loosemore") --- clone for testing


#Restaurants:
toto = Restaurant.new("Toto")
papagone = Restaurant.new("Papagone")
cool_restuarant = Restaurant.new("Cool restaurant")
# toto2 = Restaurant.new("Toto") --- clone for testing


#Reviews:
review1 = Review.new(barney, toto, "Very good!", 5)
# review2 = Review.new(barney, papagone, "Good!", 3)
# review3 = Review.new(barney, cool_restuarant, "Eh!", 2)
review4 = Review.new(ryan, toto, "Shit!", 2)
review5 = Review.new(amalie, toto, "OK!", 3)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
