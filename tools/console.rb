require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("irfan", "sul")
c2 = Customer.new("ruq", "pat")

r1 = Restaurant.new("pizza")
r2 = Restaurant.new("mcd")
r3 = Restaurant.new("nandos")

rev1 = Review.new(c1, r1, 3, "good")
rev2 = Review.new(c1, r1, 3, "good")
rev3 = Review.new(c2, r1, 1, "poor")
rev4 = Review.new(c2, r2, 5, "excellent")
rev5 = Review.new(c2, r3, 2, "ok")
rev6 = Review.new(c2, r3, 2, "ok")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line