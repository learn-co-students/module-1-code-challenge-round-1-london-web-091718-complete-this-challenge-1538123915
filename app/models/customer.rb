class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # - `Customer.all`
  #   - should return **all** of the customer instances
  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  # - `Customer.find_by_name(name)`
  #   - given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    # split string and then search in customers where first name and last name match split string eleents

    all.find {|c| c.full_name == name}
  end

  # - `Customer#add_review(restaurant, content, rating)`
  #   - given a **restaurant object**, some review content (as a string), and a star rating (as an 
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

end



# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

#### Customer

#integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
#   - Returns a **unique** array of all restaurants a customer has reviewed
