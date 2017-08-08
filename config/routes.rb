Rails.application.routes.draw do
  devise_for :users
  resources :songs
  get '/' => 'songs#index'
end
