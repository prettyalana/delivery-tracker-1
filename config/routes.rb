Rails.application.routes.draw do
  devise_for :users

  root to: "deliveries#index"
  # root to: "devise/sessions#new"
  # 1) You forgot to wrap your route inside the scope block. For example:
  # devise_scope :user do
  #   get "/some/route" => "some_devise_controller"
  
  # Routes for the Delivery resource:

  get("/", { :controller => "deliveries", :action => "index" })

  # CREATE
  post("/insert_delivery", { :controller => "deliveries", :action => "create" })
          
  # READ
  get("/deliveries", { :controller => "deliveries", :action => "index" })
  
  # get("/deliveries/:path_id", { :controller => "deliveries", :action => "show" })
  
  # UPDATE
  
  post("/modify_delivery/:path_id", { :controller => "deliveries", :action => "update" })
  
  # DELETE
  get("/delete_delivery/:path_id", { :controller => "deliveries", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
