Streamaweb::Application.routes.draw do
 
  resources :verbs, :only => :index

  devise_for :users

  resources :network_updates

  root :to => "home#index" 

  #devise_for :users
  resources :users, :only => :show

  devise_scope :user do                                                                                                                                   
    match "/signup" => "devise/registrations#new", :as => :signup
    match "/signin" => "devise/sessions#new", :as => :signin
  end
  match 'home' => 'home#index', as: :user_root 
  match 'json_stream' => 'home#json_stream', as: :json_stream 
end
