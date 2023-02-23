# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   resources :movies
#   resources :lists, only: %i[index new create show] do
#     resources :bookmarks, only: %i[new create]
#   end
#   resources :bookmarks, only: %i[destroy]
#   # Defines the root path route ("/")
#   # root "articles#index"
# end
# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   root to: "lists#index"
#   resources :lists, except: [:edit, :update] do
#     resources :bookmarks, only: [:new, :create]
#     # resources :reviews, only: :create
#   end
#   resources :bookmarks, only: :destroy
#   # resources :reviews, only: :destroy
# end
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
