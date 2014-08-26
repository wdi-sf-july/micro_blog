Rails.application.routes.draw do
  resources :users do 
    resources :posts
    resources :pages
  end

  get "/users/:user_id/tags/:id", to: "tag_users#show", :as => "tag_user"
  post "posts/:post_id/comments", to: "comments#create", :as => "post_comments"
  post "posts/:post_id/comments/:id", to: "comments#create", :as => "post_comment"
end
