# -*- encoding : utf-8 -*-
Sdtg::Application.routes.draw do
  get "zakon/new"

  get "zakon/edit"

  get "zakon/list"

  get "currency/new"

  get "currency/list"

  get "currency/edit"

  get "transport/new"

  get "transport/list"

  get "transport/edit"

  get "tr/new"

  get "tr/list"

  get "tr/edit"

  get "code/new"

  get "code/list"

  get "code/show"

  get "code/edit"

  get "contacts/new"

  get "contacts/index"

  get "contacts/list"

  get "contacts/edit"

  get "contacts/destroy"

  get "contacts/show"

  get "faq/new"

  get "faq/show"

  get "faq/list"

  get "faq/edit"

  get "admin/attempt_login"

  get "admin/login"

  get "admin/logout"

  get "admin/main"

  get "admin/new"

  get "admin/create"

  get "admin/destroy"

  get "zapros/new"
  get "ask/new"


  root :to => 'page#index'

  resources :admin, only: [ :index, :list, :new, :create, :destroy]
  resources :faq, only: [ :index, :list, :new, :create, :destroy]
  resources :code, only: [ :index, :list, :new, :create, :destroy]
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
  match ':controller(/:action(/:id))(.:format)'
end
