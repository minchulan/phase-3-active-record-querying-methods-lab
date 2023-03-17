class Show < ActiveRecord::Base
    def self.highest_rating
        # method should return the highest value in the ratings column
        @max_rating_value = Show.maximum("rating")
    end 

    def self.most_popular_show
        # Returns the show with the highest rating.
        Show.where("rating = ?", @max_rating_value)
    end 

    def self.lowest_rating
        # Returns the lowest value in the ratings column
        @min_rating_value = Show.minimum("rating")
    end 

    def self.least_popular_show
        # Returns the show with the lowest rating
        Show.where("rating = ?", @min_rating_value)
    end 

    def self.ratings_sum
        # Returns the sum of all of the ratings
        Show.sum(:rating)
    end 

    def self.popular_shows
        # Returns a list of all of the shows that have a rating greater than 5
        Show.where("rating > ?", 5)
    end 

    def self.shows_by_alphabetical_order
        # Returns an array of all of the shows sorted in alphabetical order according to their names
        Show.order(:name)
    end 
end 