Rails.application.routes.draw do

  root to: "site#home"
  get "/about", to: "site#about", as: "about"
  get "/contact", to: "site#contact", as: "contact"
  resources :users do 
    resources :posts
    resources :pages
  end

  get "/users/:user_id/tags/:id", to: "tag_users#show", :as => "tag_user"
  post "posts/:post_id/comments", to: "comments#create", :as => "post_comments"
  post "posts/:post_id/comments/:id", to: "comments#create", :as => "post_comment"
end
