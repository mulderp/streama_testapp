Streamaweb::Application.routes.draw do
 

  get "activities/index"

  resources :verbs, :only => :index
  resources :actors, :only => :index
  resources :objects, :only => :index

  devise_for :users
  devise_for :admin

  resources :network_updates

  root :to => "home#index" 

  #devise_for :users
  resources :users, :only => :show

  devise_scope :user do                                                                                                                                   
    match "/signup" => "devise/registrations#new", :as => :signup
    match "/signin" => "devise/sessions#new", :as => :signin
  end
  match 'home' => 'home#index', as: :user_root 
  match 'my_activities' => 'home#published', as: :published_activities
  match 'about' => 'home#about', as: :about

  namespace "api" do
    namespace "v1" do
      match 'activities.json' => "activities#index", :action => 'index', :format => 'json', :as => :api_activities
      resources :activities
    end
  end
  match 'json_stream' => 'home#json_stream', as: :json_stream 

  namespace "admin" do
    resources :activities
  end
  match "admin/activities" => "admin/activities#index", as: :admin_root
end
