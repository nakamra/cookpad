Rails.application.routes.draw do
  devise_for :kitchens
  root "recipes#index"
  resources :recipes, only: [:index, :new, :show] do
    collection do
      get 'post'
    end
  end

end
