require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("irfan", "suleman")
cust2 = Customer.new("ruq", "patel")
cust3 = Customer.new("mo", "ali")

rest1 = Restaurant.new("pizza Hut")
rest2 = Restaurant.new("Mcd")
rest3 = Restaurant.new("Nandos")

rev1 = Review.new(cust1, rest1, 4, "good")
rev2 = Review.new(cust2, rest1, 3, "ok")
rev3 = Review.new(cust3, rest2, 3, "ok")
rev4 = Review.new(cust3, rest3, 3, "ok")
rev5 = Review.new(cust1, rest1, 5, "excellent")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line