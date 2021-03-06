MmlCare::Application.routes.draw do
  get 'mmlca/overview' => 'mmlca#overview'
  get 'mmlca/specification' => 'mmlca#specification'
  get 'mmlca/table' => 'mmlca#table'
  get 'mmlvs/compare_vs_lb' => 'mmlvs#compare_vs_lb'
  get 'mmlvs/specification' => 'mmlvs#specification'
  get 'mmlca/sample_instance' => 'mmlca#sample_instance'
  get 'prescriptions/specification' => 'prescriptions#specification'
  get 'injections/specification' => 'injections#specification'

  resources :prescriptions
  resources :mmlca
  resources :mmlvs
  resources :people
  resources :services
  resources :observations
  resources :intakes
  resources :bodily_outputs
  resources :injections
  resources :regimen
  resources :medications
  resources :archetypes
  resources :nodes
  
  root to: 'mmlca#overview'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root to: 'welcome#index'

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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
