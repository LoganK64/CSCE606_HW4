require 'rails_helper'
require 'spec_helper'
describe DirectorController, type: :controller do 
    describe 'If a valid director exists' do
        it "should find movies by the same director" do
            Movie.create(title: "Star Wars", director: "George Lucas")
            get :show, id: "George Lucas"
            response.should render_template :show
        end
    end
    describe 'If a valid director does not exist' do
        it "should go back to the rottenpotatoes home page" do
            get :show, id: nil
            expect(response).to redirect_to(movies_path)
        end
        it "should display a message saying: 'movie name' has no director info"
    end
end