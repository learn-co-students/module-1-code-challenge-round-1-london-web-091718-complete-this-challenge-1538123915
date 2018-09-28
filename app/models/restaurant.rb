class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name = name}
  end

  def reviews
    Review.all.select{|review|review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    total_stars = 0
    total_rating_array = self.reviews.map{|review| review.rating}
    total_rating_array.each{|rating| total_stars += rating}
    average = (total_stars)/(self.reviews.count)
    average
  end

  def longest_review
    content_array = self.reviews.map{|review| review.content}
    content_array.max_by{|content| content.length}
  end

end
