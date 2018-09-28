class Review
  attr_accessor :review, :customer, :restaurant, :rating

  @@all = []

  def initialize(review, customer, restaurant, rating)
    @review = review
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def content
    Review.all.find do |review|
      review.review
    end
  end

end
