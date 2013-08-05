Grokphoto::Application.routes.draw do

  root :to => "home#index"
  get 'timestamp' => 'home#timestamp' # used to keep passenger spooled up in prod
  get 'sitemap' => 'home#sitemap'
  get 'blog' => 'home#blog'

  resources :private_galleries, :only => :show
  resources :galleries, :only => :show
  resources :pages, :only => :show
  resources :posts, :only => [:index, :show]
  resources :contact_requests, :only => [:new, :create] do
    get :thanks, :on => :collection
  end

  devise_for :photographers

  get 'admin' => 'admin/events#index'
  namespace :admin do
    resources :events, :only => :index
    resource :photographer, :only => [:edit, :update]
    resources :pages
    resources :posts
    resources :galleries
    resources :private_galleries do
      get :invite, :on => :member
      put :send_invite, :on => :member
    end
    resources :photos, :only => [:edit, :update, :destroy] do
      put 'sort', :on => :collection
    end
  end

end
