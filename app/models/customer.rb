class Customer
  attr_accessor :first_name, :surname
  @@all = []
  def initialize(first_name, surname)
    @first_name = first_name
    @surname = surname
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_first_name(first_name)
    all.select {|c| c.first_name == first_name}
  end

  def self.all_names
    all.map {|c| "#{c.first_name} #{c.surname}"}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select {|r| r.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map {|r| r.restaurant}.uniq
  end

  def self.find_by_name(name)
    name_arr = name.split(" ")

    all.find do |c|
      c.first_name == name_arr[0]
      c.surname == name_arr[1]
    end
  end
end