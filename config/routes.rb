Myapp::Application.routes.draw do
  resources :source_data
 #root to: 'home#index'
  #root 'source_data#index'
  root 'source_data#chart'
  # get 'sessions/new'
  # get 'sessions/create'
  get 'sessions/destroy'
  # resources :users
  get 'nsnlist'=> 'source_data#nsnlist'
  get 'source'=> 'source_data#source'
  # get "home/index"
  # get "home/minor"
  # get "cmms/dbmap"
  # get 'chart' => 'cmms/dbmap'
  get 'edit' => 'source_data#edit'
  get 'viewsource' => 'source_data#viewsource'
  get 'view' => 'source_data#view'
  get 'dictionary_detail' => 'source_data#dictionary_detail'
  #  get 'dictionary_detailinc' => 'cmms#dictionary_detailinc'
  post   'login'   => 'sessions#create'
  get 'login' => 'sessions#login'
  get 'logout' => 'sessions#destroy'
  get 'new' => 'users#new'
  get 'factorys/show'
  get 'view_path' => 'factorys#view'
  get 'external_view_path' => 'factorys#external_view'
  get 'org_path' => 'factorys#org'
  post 'org1_path' => 'factorys#org_rel'
  post 'phone' => 'factorys#phone'
  post 'mfg' => 'factorys#mfg_capacity' 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root to: 'home#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
