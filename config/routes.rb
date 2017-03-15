Rails.application.routes.draw do
  devise_for :users
  root "recipes#index"
  resources :recipes, only: [:index, :new, :show] do
    collection do
      get 'post'
      get 'search'
    end
  end

end
