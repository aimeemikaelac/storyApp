StoryApp::Application.routes.draw do
  resources :sections


  resources :chapters


  resources :shared_stories


  resources :stories
	
	get "stories/:id/chapter/new" => "chapters#new", :as => "new_chapter"
	
	post "stories/:id/create" => "stories#create", :as => "create_story"
	
	post "stories/:userId" => "stories#create"
	
	match "stories/show" => "stories#show"
	
	get "user/stories/:id" => "users#list_stories", :as => "list_stories"
	
	get "stories/show" => "stories#show"

	get "stories/new/:id" => "stories#new", :as => "new_story"
	
	get "stories/:id" => "stories#show", :as => "stories"
	
	get "stories/:storyId/edit" => "stories#edit", :as => "edit_story"
	
  get "user/list" 
  
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"
  
  get "list" => "users#list", :as => "list"

	root :to => "users#index"
	
	get "log_in" => "sessions#new", :as => "log_in"
	
	get "log_out" => "sessions#destroy", :as => "log_out"
	
	get "sign_up" => "users#new", :as => "sign_up"
	
	get "show/:id" => "users#show", :as => "profile"
	
	get "log_in/:name" => "sessions#new", :as => "log_in_by_name"
	
	get "stories/:id/delete" => "stories#destroy", :as => "delete_story"
	
	get "chapters/:id/delete" => "chapters#destroy", :as => "delete_chapter"
	
	get "stories/:id/share" => "shared_stories#new", :as => "share_story"

  resources :users
  resources :sessions


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
