Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  #resources :blog_post

  get "/blog_post/new", to: "blog_post#new", as: :new_blog_post 
  get "/blog_post/:id", to: "blog_post#show", as: :blog_post
  patch "/blog_post/:id", to: "blog_post#update"
  delete "/blog_post/:id", to: "blog_post#destroy"
  get "/blog_post/:id/edit", to: "blog_post#edit", as: :edit_blog_post
  post "/blog_posts", to: "blog_post#create", as: :blog_posts

 

  # Defines the root path route ("/")
   root "blog_post#index"
end
