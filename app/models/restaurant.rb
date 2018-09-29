
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
    all.select {|r| r.name == name}
  end


  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map {|rev| rev.customer}.uniq
  end

  def average_star_rating
    sum = 0
    reviews.map {|rev| sum += rev.rating}
    sum / reviews.length
  end

  def longest_review
    size = 0
    str = ""
    reviews.each do |e|
      if e.content.length > size
        size = e.content.length
        str = e.content
      end
  end
    str
  end
end