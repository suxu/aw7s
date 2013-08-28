Aw7s::Application.routes.draw do

  #root :to => 'home#show'

  devise_for :players, :path => "/", skip: [:sessions,:confirmations, :passwords,:registrations]

  devise_scope :player do
  get   'console/sign_in',  to: 'console/sessions#new',      as: :new_console_session
  post  'console/sign_in',     to: 'console/sessions#create',     as: :console_session
  delete   'console/sign_out', to: 'console/sessions#destroy',     as: :destroy_console_session
   
    
  end

  namespace :console do

    #root :to => 'home#show'

    # get   'console/sign_in', to: 'console/sessions#new',      as: :new_console_session
    # post  'console/sign_in', to: 'console/sessions#create',     as: :console_session
    # delete 'console/sign_out', to: 'console/sessions#destroy',     as: :destroy_console_session

    get '/' => 'home#show'


    resources :regions do 
      get :list ,:on => :collection
      resources :zones,:except=>[:show]
    end
  
    resources :categories do
      get :list, :on => :collection
    end
    resources :services do 
      get :list , :on => :collection
      get :coverings, :on => :member
    end
    resources :players do 
      collection do
        get :list
      end
    end
  end

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
