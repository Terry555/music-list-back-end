class Api::V1::ArtistsController < ApplicationController
  before_action :find_artist, only: [:update]
 def index
   @artists = Artist.all
   render json: @artists
 end

 def show
   @artist = Artist.find(params[:id])
   render json: @artist
 end

 def update
   @artist.update(artist_params)
   if @artist.save
     render json: @artist, status: :accepted
   else
     render json: { errors: @artist.errors.full_messages }, status: :unprocessible_entity
   end
 end

 private

 def artist_params
   params.permit(:name, :similar_artists, :image, :tag, :bio)
 end

 def find_artist
   @artist = Artist.find(params[:id])
 end
end
