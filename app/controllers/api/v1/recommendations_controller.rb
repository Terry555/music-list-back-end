class Api::V1::RecommendationsController < ApplicationController
  before_action :find_recommendation, only: [:update]
 def index
   @recommendations = Recommendation.all
   render json: @recommendations
 end

 def show
   @recommendation = Recommendation.find(params[:id])
   render json: @recommendation
 end

 def new
   @recommendation = Recommendation.new
 end

 def create
   @recommendation = Recommendation.find_or_create_by(recommendation_params)
    render json: @recommendation
   # if @artist.valid?
   #   redirect_to @artist
   # else
   #   render :new
   # end
 end

 def update
   @recommendation.update(recommendation_params)
   if @recommendation.save
     render json: @recommendation, status: :accepted
   else
     render json: { errors: @recommendation.errors.full_messages }, status: :unprocessible_entity
   end
 end

 private

 def recommendation_params
   params.permit(:artist_id, :recommended_artist_id)
 end

 def find_recommendation
   @recommendation = Recommendation.find(params[:id])
 end
end
