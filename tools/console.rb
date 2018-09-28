require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer_1 = Customer.new("Lee", "Messi")
customer_2 = Customer.new("deedee", "Lam")
customer_3 = Customer.new("Mo", "Rank")
customer_4 = Customer.new("Lee", "Leo")
customer_5 = Customer.new("Lee", "Siri")

restaurant_1 = Restaurant.new("Best Mangal")
restaurant_2 = Restaurant.new("Pret")
restaurant_3 = Restaurant.new("Eat")

review_1 = Review.new("It was great!", customer_1, restaurant_1, 5)
review_2 = Review.new("The food was bad!", customer_1, restaurant_2, 1)
review_3 = Review.new("I loved it!", customer_2, restaurant_3, 4)
review_4 = Review.new("It was average.", customer_3, restaurant_3, 3)
review_5 = Review.new("It was awesome!", customer_4, restaurant_3, 5)
review_6 = Review.new("I didn't like the food.", customer_5, restaurant_2, 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
