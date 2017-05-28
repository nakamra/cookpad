Rails.application.routes.draw do
  devise_for :users
  root "recipes#index"
  resources :recipes, only: [:index, :new, :edit, :show, :create, :update] do
    resources :ingredients, only: [:create]
    collection do
      get 'search'
    end
  end

end
