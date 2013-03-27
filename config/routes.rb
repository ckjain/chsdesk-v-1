RailsPrelaunchSignup::Application.routes.draw do

  resource :calendar, :only => [:show]

  resources :events

#----- Prelaunch sign up------------------------
  authenticated :user do
    root :to => 'home#index'
  end
    root :to => 'home#index'

  devise_scope :user do
    root :to => "devise/registrations#new"
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  match 'users/bulk_invite/:quantity' => 'users#bulk_invite', :via => :get, :as => :bulk_invite
  match 'units/unit_update' => 'units#unit_update', :via => :get, :as => :unit_update

#------------Baseapp2----------------

    match '/users/search' => 'users#search',  :requirements => { :method => :get }
    resources :users do 
      member do 
        put :suspend
        put :unsuspend
        put :activate
        delete :purge
        put :reset_password
        get :set_user_login
        get :set_user_email
        get :invite
        match 'role/:role' => "users#toggle_role", :as => "toggle_role"
      end
      collection do
        get :pending
        get :active
        get :suspended
        get :deleted
      end
    end

#------------Baseapp2------end----------
  resources   :after_register
#------------Dhtmlx grid----------------------
    resources :societies do
       match '/master',      :to => 'societies#view',  :requirements => { :method => :get }
        collection do
          get 'view'
          get 'data'
          get 'dbaction'
          get 'show'
        end
    end
    resource :unit_types do
       match '/unit_types',  :to => 'unit_types#show',  :requirements => { :method => :get }
        collection do
          get 'view'
          get 'data'
          get 'dbaction'
          get 'show'
        end
    end
    resources :members do
       match '/view_members',     :to => 'members#view',  :requirements => { :method => :get }
        collection do
          get 'data'
          get 'dbaction'
          get 'view'
          get 'index'
       end
    end

    resources :memberships do
      match '/memberships', :to => 'memberships#show',  :requirements => { :method => :get }
          collection do
            get 'view'
            get 'data'
            get 'dbaction'
            get 'show'
          end
     end

     resources :units do
      match '/units',       :to => 'units#show',  :requirements => { :method => :get }
          collection do
            get 'view'
            get 'data'
            get 'dbaction'
            get 'show'
          end
      end
     resources :bill_setups do
      match '/bill_setups',       :to => 'bill_setups#show',  :requirements => { :method => :get }
          collection do
            get 'view'
            get 'data'
            get 'dbaction'
            get 'show'
          end
      end
     resources :bill_headers do
      match '/bill_headers',       :to => 'bill_headers#view',  :requirements => { :method => :get }
          collection do
            get 'view'
            get 'data'
            get 'dbaction'
          end
      end

     resources :bills do
      match '/view_bills',       :to => 'bills#view',  :requirements => { :method => :get }
          collection do
            get 'data'
            get 'dbaction'
            get 'view'
            get 'index'
          end
      end
     resources :vendors do
      match '/view_vendors',       :to => 'vendors#show',  :requirements => { :method => :get }
          collection do
            get 'data'
            get 'dbaction'
            get 'show'
            get 'index'
          end
      end
  
  resources :staffs
  resources :meetings 
  resources :meeting_types 

  match '/committee_members',  :to => 'committee_members#index'
  match '/staffs',      :to => 'staffs#index'
  match '/vendors',     :to => 'vendors#index'

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  # tublar--------------------

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  match '/videos', :to =>  "videos#index"
#  get "/insert_search/:search_type/:search"     => "api#search"
#  get "/:username/playlist/:playlist_name.json" => "api#user_playlist"
#  get "/stats"                                => "stats#index"
#  get "/genres"                               => "videos#genres"
#  get "/genre/:artist_band"                   => "videos#index"
#  get "/just/:artist_band"                    => "videos#index"
#  get "/similar/:artist_band"                 => "videos#index"
#  get "/video/:video_id"                      => "videos#index"
  
#  get "/:username/playlists"                  => "playlists#index"
#  get "/:username/playlist/:playlist_name"    => "playlists#listen"
#  match "/playlist/create"                    => "playlists#create"
#  match "/playlist/add_video"                 => "playlists#add_video"
#  match "/playlist/delete_video"              => "playlists#delete_video"
#  match "/get_playlists_video_belongs_to"     => "playlists#get_playlists_video_belongs_to"
  
#  post "/check_banned"                        => "bannedVideos#check"
#  post "/ban_video"                           => "bannedVideos#ban_video"

  get "static_pages/help"
#  get "static_pages/about"
#  get "static_pages/contact"
  match '/help',    :to => 'static_pages#help'
#  match '/about',   :to => 'static_pages#about'
#  match '/contact', :to => 'static_pages#contact'


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