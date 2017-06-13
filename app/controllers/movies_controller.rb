class MoviesController < ApplicationController
  def query
    # localhost:3000/movies?query={movie(id: 3) {title,year,actors {name}}}
    # localhost:3000/movies?query={actor(id: 4) {name, bio, movies {title, year}}}
    result = Schema.execute params[:query]
    render json: result
  end
end
