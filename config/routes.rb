Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :artists, :users, :user_artists, :recommendations, :recommended_artists
        delete '/user_artists/:artist_id/:user_id', to: 'user_artists#delete'
      end
    end
end
