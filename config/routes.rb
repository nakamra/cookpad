Rails.application.routes.draw do
  devise_for :users
  root "recipes#index"
  resources :recipes, only: [:index, :new, :edit, :show, :create] do
    collection do
      get 'search'
    end
  end

end
