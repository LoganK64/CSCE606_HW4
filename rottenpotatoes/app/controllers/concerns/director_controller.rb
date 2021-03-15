class DirectorController < ApplicationController
  
  def show
    if params[:id].nil?
      redirect_to movies_path(:err => params[:err])
    end
    @director = params[:id]
    @movies = Movie.similar_directors(params[:id])
  end
  
  def new
    # default: render 'new' template
  end
  
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def director_params
    params.require(:director)
  end
end