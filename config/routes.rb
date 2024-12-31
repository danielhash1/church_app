Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  namespace :admin do
    root 'home#index'
    get 'sessions/new'
    get 'sessions/create'
    get 'sessions/destroy'
    resources :carousel_images, only: [:index, :new, :create, :edit, :update, :destroy]
    

  end



resources :posts
# config/routes.rb
resources :ministries do
  patch 'update_order', on: :collection
end


  get 'admin/login', to: 'admin/sessions#new', as: :new_admin_session
  post 'admin/login', to: 'admin/sessions#create', as: :admin_session
  delete 'admin/logout', to: 'admin/sessions#destroy', as: :destroy_admin_session

  # Пример маршрута для админ-панели
  get 'admin/dashboard', to: 'admin/dashboard#index', as: :admin_dashboard

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
