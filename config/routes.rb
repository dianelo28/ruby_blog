Rails.application.routes.draw do
  root to: "pages#index"

  get "/profile", to: "users#show", as: :profile
  get "/signup", to: "users#new", as: :new_user
  get "/login", to: "sessions#new", as: :new_session
  post "/login", to: "sessions#create", as: :login
  get "/logout", to: "sessions#destroy", as: :logout

  resources :users
  resources :posts
end


#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         pages#index
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy