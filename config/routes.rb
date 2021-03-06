Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "items#index"
  resources :items do
    member do
      get :delete
      post :flag
      post :unflag
    end
  end
  get "/deletion", to: "items#flagged_list"
end
