class Api::V1::RecommendedArtistsController < ApplicationController
  before_action :find_recommended_artist, only: [:update]
 def index
   @recommended_artists = RecommendedArtist.all
   render json: @recommended_artists
 end

 def show
   @recommended_artist = RecommendedArtist.find(params[:id])
   render json: @recommended_artist
 end

 def update
   @recommended_artist.update(recommended_artist_params)
   if @recommended_artist.save
     render json: @recommended_artist, status: :accepted
   else
     render json: { errors: @recommended_artist.errors.full_messages }, status: :unprocessible_entity
   end
 end

 private

 def recommended_artist_params
   params.permit(:name, :image)
 end

 def find_recommended_artist
   @recommended_artist = RecommendedArtist.find(params[:id])
 end
end
