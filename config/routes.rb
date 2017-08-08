Rails.application.routes.draw do
  devise_for :users
  resources :songs
  post '/users/:user_id/songs/:song_id' => "songs#favorite"
  get '/' => 'songs#index'
end
