class Movie < ActiveRecord::Base
    before_save :set_director
    def self.similar_directors(director)
        Movie.where(["director = ?", director])
    end
    
    def set_director
        self.director ||="None"
    end
    def self.all_ratings
        %w(G PG PG-13 NC-17 R)
    end
end
