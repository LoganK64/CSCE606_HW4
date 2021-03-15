require 'rails_helper'
require 'spec_helper'
describe Movie do 
    subject{
        Movie.new(title: "Star Wars", rating: "PG", director: "George Lucas")
    }
    describe 'If a valid director exists' do
        it "should find movies by the same director" do
            Movie.create(title: "Star Wars", rating: "PG", director: "George Lucas")
            expect(Movie.similar_directors("George Lucas")).to exist
        end
    end
    describe 'If a valid director does not exist' do
        it "should find no movies with the same director" do
            Movie.create(title: "Star Wars", rating: "PG", director: "George Lucas")
            expect(Movie.similar_directors("Ridley Scott")).not_to exist
        end
    end
end