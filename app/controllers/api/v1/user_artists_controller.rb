class Api::V1::UserArtistsController < ApplicationController
  before_action :find_user_artist, only: [:update]
 def index
   @user_artists = UserArtist.all
   render json: @user_artists
 end

 def show
   @user_artist = UserArtist.find(params[:id])
   render json: @user_artist
 end

 def new
   @user_artist = UserArtist.new
 end

 def create
   @user_artist = UserArtist.find_or_create_by(user_artist_params)
    render json: @user_artist
   # if @artist.valid?
   #   redirect_to @artist
   # else
   #   render :new
   # end
 end

 def update
   @user_artist.update(user_artist_params)
   if @user_artist.save
     render json: @user_artist, status: :accepted
   else
     render json: { errors: @user_artist.errors.full_messages }, status: :unprocessible_entity
   end
 end

 def delete
   @user_artist = UserArtist.find_by(user_id:params[:user_id], artist_id:params[:artist_id])
   @user_artist.destroy
 end

 private

 def user_artist_params
   params.permit(:user_id, :artist_id)
 end

 def find_user_artist
   @user_artist = UserArtist.find(params[:id])
 end
end
