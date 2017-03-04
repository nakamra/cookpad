Rails.application.routes.draw do
  root "recipes#index"
  resources :recipes, only: [:index, :new] do
    collection do
      get 'post'
    end
  end

end
