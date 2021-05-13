class GenresController < ApplicationController
  # GET /genres
  # GET /genres.json
  def index
    @genres = Genre.all
  end
end
