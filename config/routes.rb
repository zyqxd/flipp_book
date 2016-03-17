Rails.application.routes.draw do
  root 'profiles#index'

  resources :profiles, only: [:index, :show, :update]

  get 'search/index' => 'search#index'
  get 'search/tags' => 'search#search_tags'
  get 'search/tags_and_names' => 'search#search_tags_and_names'

end
