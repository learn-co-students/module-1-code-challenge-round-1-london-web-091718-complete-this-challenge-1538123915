class Review
    attr_accessor :rating, :content
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    # - `Review.all`
    # - returns all of the reviews
    def self.all
        @@all
    end

    # - `Review#customer`
    #   - returns the customer object for that given review
    #   - Once a review is created, I should not be able to change the author
    def self.customer
        self.customer
    end

    # - `Review#restaurant`
    #   - returns the restaurant object for that given review
    #   - Once a review is created, I should not be able to change the restaurant
    def self.restaurant
        self.restaurant
    end

    # - `Review#rating`
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
    def self.rating
        self.rating
    end

    # - `Review#content`
    #   - returns the review content, as a string, for a particular review
    def self.content
        self.content
    end
end






