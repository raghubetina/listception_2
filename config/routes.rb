Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "boards#index"
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Card resource:
  # CREATE
  get "/cards/new", :controller => "cards", :action => "new"
  post "/create_card", :controller => "cards", :action => "create"

  # READ
  get "/cards", :controller => "cards", :action => "index"
  get "/cards/:id", :controller => "cards", :action => "show"

  # UPDATE
  get "/cards/:id/edit", :controller => "cards", :action => "edit"
  post "/update_card/:id", :controller => "cards", :action => "update"

  # DELETE
  get "/delete_card/:id", :controller => "cards", :action => "destroy"
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

  # Routes for the Board resource:
  # CREATE
  get "/boards/new", :controller => "boards", :action => "new"
  post "/create_board", :controller => "boards", :action => "create"

  # READ
  get "/boards", :controller => "boards", :action => "index"
  get "/boards/:id", :controller => "boards", :action => "show"

  # UPDATE
  get "/boards/:id/edit", :controller => "boards", :action => "edit"
  post "/update_board/:id", :controller => "boards", :action => "update"

  # DELETE
  get "/delete_board/:id", :controller => "boards", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
